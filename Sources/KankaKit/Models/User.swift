//
//  User.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class User: Codable {
  public let id: Int
  public let name: String
  public let avatar: URL

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case avatar
  }
}
