//
//  ClientError.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public enum ClientError: Error {
  /// Failed to build the URL to make the request.
  case malformedURL
  /// Failed to parse the Kanka's JSON reponse.
  case malformedJSON
  /// Failed to parse Kanka's model.
  case invalidModel
  /// Generic error.
  case genericError
  /// The Kanka service returned an error.
  case kankaError(String)
}
