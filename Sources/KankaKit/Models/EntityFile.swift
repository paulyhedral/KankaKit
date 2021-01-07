//
//  EntityFile.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class EntityFile: Codable {
  public let createdAt: Date
  public let createdBy: Int?
  public let entityId: Int
  public let entry: String
  public let id: Int
  public let visibility: Visibility
  public let name: String
  public let path: URL
  public let size: Int
  public let type: String
  public let updatedAt: Date
  public let updatedBy: Int?

  private enum CodingKeys: String, CodingKey {
    case createdAt = "created_at"
    case createdBy = "created_by"
    case entityId = "entity_id"
    case entry
    case id
    case visibility
    case name
    case path
    case size
    case type
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
  }
}
