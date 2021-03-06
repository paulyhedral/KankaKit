//
//  Client.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/22/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

extension URLComponents {
  init?<A>(baseURL: String, request: Request<A>) {
    guard
      let realBaseURL = URL(string: baseURL),
      let completeURL = URL(string: request.path, relativeTo: realBaseURL)
    else {
      return nil
    }

    self.init(url: completeURL, resolvingAgainstBaseURL: true)

    path = request.path
    queryItems = request.method.queryItems
  }
}
