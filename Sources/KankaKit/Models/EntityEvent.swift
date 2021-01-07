//
//  EntityEvent.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class EntityEvent: Codable {
  public let calendarId: Int
  public let comment: String
  public let createdAt: Date
  public let createdBy: Int?
  public let date: String
  public let entityId: Int
  public let id: Int
  public let isPrivate: Bool
  public let isRecurring: Bool
  public let length: Int
  public let recurringUntil: String?
  public let updatedAt: Date
  public let updatedBy: Int?

  private enum CodingKeys: String, CodingKey {
    case calendarId = "calendar_id"
    case comment
    case createdAt = "created_at"
    case createdBy = "created_by"
    case date
    case entityId = "entity_id"
    case id
    case isPrivate = "is_private"
    case isRecurring = "is_recurring"
    case length
    case recurringUntil = "recurring_until"
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
  }
}
