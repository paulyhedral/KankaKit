//
//  Map.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Map: Codable {
  public let id: Int
  public let name: String
  public let entry: String
  public let image: URL
  public let imageFull: URL
  public let imageThumb: URL
  public let hasCustomImage: Bool
  public let isPrivate: Bool
  public let entityId: Int
  public let tags: [Tag]
  public let createdAt: Date
  public let createdBy: Int
  public let updatedAt: Date
  public let updatedBy: Int
  public let locationId: Int
  public let type: String?
  public let height: Int
  public let width: Int
  public let parentId: Int?
  public let grid: Int
  public let minZoom: Int
  public let maxZoom: Int
  public let initialZoom: Int
  public let centerX: Int?
  public let centerY: Int?
  public let layers: [MapLayer]
  public let groups: [MapGroup]

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case entry
    case image
    case imageFull = "image_full"
    case imageThumb = "image_thumb"
    case hasCustomImage = "has_custom_image"
    case isPrivate = "is_private"
    case entityId = "entity_id"
    case tags
    case createdAt = "created_at"
    case createdBy = "created_by"
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
    case locationId = "location_id"
    case type
    case height
    case width
    case parentId = "map_id"
    case grid
    case minZoom = "min_zoom"
    case maxZoom = "max_zoom"
    case initialZoom = "initial_zoom"
    case centerX = "center_x"
    case centerY = "center_y"
    case layers
    case groups
  }
}
