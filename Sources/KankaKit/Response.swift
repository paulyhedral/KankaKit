//
//  Response.swift
//  KankaKit
//
//  Created by Paul Schifferer on 6/6/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public struct Response<Model : Codable> : Codable {
    public let data : Model
    public let links : Pagination
    public let meta : Meta
    public let sync : Date 
}

//public struct Response<Model> {
//  /// Success wraps a model and an optional pagination
//  case success(Model, Pagination?, Meta?, Date?)
//  /// Failure wraps an ErrorType
//  case failure(Error)
//}
//
//extension Response {
//  /// Convenience getter for the value.
//  public var data: Model? {
//    switch self {
//    case .success(let data, _, _, _): return data
//    case .failure: return nil
//    }
//  }
//
//  /// Convenience getter for the pagination.
//  public var pagination: Pagination? {
//    switch self {
//    case .success(_, let pagination, _, _): return pagination
//    case .failure: return nil
//    }
//  }
//
//  public var meta: Meta? {
//    switch self {
//    case .success(_, _, let meta, _): return meta
//    case .failure: return nil
//    }
//  }
//
//  public var sync: Date? {
//    switch self {
//    case .success(_, _, _, let sync): return sync
//    case .failure: return nil
//    }
//  }
//
//  /// Convenience getter for the error.
//  public var error: Error? {
//    switch self {
//    case .success: return nil
//    case .failure(let error): return error
//    }
//  }
//
//  /// Convenience getter to test whether the result is an error or not.
//  public var isError: Bool {
//    switch self {
//    case .success: return false
//    case .failure: return true
//    }
//  }
//}
