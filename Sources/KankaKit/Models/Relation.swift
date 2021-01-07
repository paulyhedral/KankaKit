//
//  Relation.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//
import Foundation

public class Relation: Codable {
  public let ownerId: Int
  public let targetId: Int
  public let relation: String
  public let attitude: Int
  public let isPrivate: Bool
  public let isStar: Bool
  public let color: String?
  public let createdAt: Date
  public let updatedAt: Date

  private enum CodingKeys: String, CodingKey {
    case ownerId = "owner_id"
    case targetId = "target_id"
    case relation
    case attitude
    case isPrivate = "is_private"
    case isStar = "is_star"
    case color = "colour"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
  }
}
