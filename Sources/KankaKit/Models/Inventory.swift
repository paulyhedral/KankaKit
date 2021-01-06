//
//  Inventory.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Inventory: Codable {
  public let id: Int
  public let name: String?
  public let isPrivate: Bool
  public let entityId: Int
  public let itemId: Int
  public let amount: Int
  public let isEquipped: Bool
  public let item: Item?
  public let position: String
  public let visibility: Visibility

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case isPrivate = "is_private"
    case entityId = "entity_id"
    case itemId = "item_id"
    case amount
    case isEquipped = "is_equipped"
    case item
    case position
    case visibility
  }
}
