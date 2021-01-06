//
//  Journal.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Journal: Codable {
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
  public let characterId: Int
  public let type: String?
  public let date: String

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
    case date
  }
}
