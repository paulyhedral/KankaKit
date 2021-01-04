//
//  Client.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/22/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public struct Client: ClientType {
  let baseURL: String
  let session: URLSession
  public var accessToken: String?

  public init(baseURL: String, accessToken: String? = nil, session: URLSession = .shared) {
    self.baseURL = baseURL
    self.session = session
    self.accessToken = accessToken
  }

  public func run<Model>(_ request: Request<Model>, completion: @escaping (Response<Model>) -> Void)
  {
    guard
      let components = URLComponents(baseURL: baseURL, request: request),
      let url = components.url
    else {
      completion(.failure(ClientError.malformedURL))
      return
    }

    let urlRequest = URLRequest(url: url, request: request, accessToken: accessToken)
    let task = session.dataTask(with: urlRequest) { data, response, error in
      if let error = error {
        completion(.failure(error))
        return
      }

      guard let data = data else {
        completion(.failure(ClientError.malformedJSON))
        return
      }

      guard
        let httpResponse = response as? HTTPURLResponse,
        httpResponse.statusCode == 200
      else {
        let kankaError = try? KankaError.decode(data: data)
        let error: ClientError =
          kankaError.map { .kankaError($0.description) } ?? .genericError
        completion(.failure(error))
        return
      }

      guard let model = try? Model.decode(data: data) else {
        completion(.failure(ClientError.invalidModel))
        return
      }

      completion(.success(model, httpResponse.pagination))
    }

    task.resume()
  }
}
