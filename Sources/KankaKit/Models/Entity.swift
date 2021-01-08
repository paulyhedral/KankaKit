//
//  Entity.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//
import Foundation

public class Entity: Codable {
  public let id: Int
  public let name: String
  public let type: String
  public let childId : Int
  public let tags : [Int]
  public let isPrivate : Bool
  public let campaignId : Int
  public let isAttributesPrivate : Bool
  public let tooltip : String?
  public let headerImage : Data?
  public let createdAt : Date
  public let createdBy : Int?
  public let updatedAt : Date
  public let updatedBy : Int?

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case type
    case childId = "child_id"
    case tags
    case isPrivate = "is_private"
    case campaignId = "campaign_id"
    case isAttributesPrivate = "is_attributes_private"
    case tooltip
    case headerImage = "header_image"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
  }
}
