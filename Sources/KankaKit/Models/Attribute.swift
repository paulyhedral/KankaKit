//
//  Attribute.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Attribute: Codable {
  public let id: Int
  public let name: String
  public let isPrivate: Bool
  public let entityId: Int
  public let createdAt: Date
  public let createdBy: Int?
  public let updatedAt: Date
  public let updatedBy: Int?
  public let type: String?
  public let value: String
  public let isStar: Bool
  public let defaultOrder: Int
  public let apiKey: String

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case isPrivate = "is_private"
    case entityId = "entity_id"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
    case type
    case apiKey = "api_key"
    case defaultOrder = "default_order"
    case isStar
    case value
  }
}
