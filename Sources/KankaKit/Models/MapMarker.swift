//
//  MapMarker.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//
import Foundation

public class MapMarker: Codable {
  public let id: Int
  public let name: String
  public let isPrivate: Bool
  public let entityId: Int?
  public let createdAt: Date
  public let createdBy: Int
  public let updatedAt: Date
  public let updatedBy: Int
  public let color: String
  public let customIcon: URL?
  public let customShape: String
  public let fontColor: String
  public let icon: String
  public let isDraggable: Bool
  public let latitude: String
  public let longitude: String
  public let mapId: Int
  public let opacity: Int
  public let shapeId: Int
  public let sizeId: Int
  public let visibility: Visibility

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case isPrivate = "is_private"
    case entityId = "entity_id"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
    case color = "colour"
    case customIcon = "custom_icon"
    case customShape = "custom_shape"
    case fontColor = "font_colour"
    case icon
    case isDraggable = "is_draggable"
    case latitude
    case longitude
    case mapId = "map_id"
    case opacity
    case shapeId = "shape_id"
    case sizeId = "size_id"
    case visibility
  }
}
