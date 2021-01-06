//
//  MapGroup.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class MapGroup: Codable {
  public let id: Int
  public let name: String
  public let isPrivate: Bool
  public let isShown: Bool
  public let createdAt: Date
  public let createdBy: Int
  public let updatedAt: Date
  public let updatedBy: Int
  public let mapId: Int
  public let visibility: Visibility
  public let position: Int

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case isPrivate = "is_private"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
    case isShown = "is_shown"
    case mapId = "map_id"
    case visibility
    case position
  }
}
