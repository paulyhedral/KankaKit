//
//  Conversation.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Conversation: Codable {
  public let id: Int
  public let name: String
  public let entry: String
  public let image: URL
  public let imageFull: URL
  public let imageThumb: URL
  public let hasCustomImage: Bool
  public let isPrivate: Bool
  public let entityId: Int
  public let tags: [Int]
  public let createdAt: Date
  public let createdBy: Int
  public let updatedAt: Date
  public let updatedBy: Int
  public let type: String?
  public let target: String
  public let participants: Int
  public let messages: Int

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
    case type
    case target
    case participants
    case messages
  }

  public struct Create: Codable {
    public let name : String
    public let type : String?
    public let parentId : Int?
    public let tags : [Int]?
    public let isPrivate : Bool?
    public let image : Data?
    public let imageURL : URL?

    private enum CodingKeys: String, CodingKey {
        case name
        case type
        case parentId = "note_id"
        case tags
        case isPrivate = "is_private"
        case image
        case imageURL = "image_url"
    }

  }

  public struct Update: Codable {
    public let name : String
    public let type : String?
    public let parentId : Int?
    public let tags : [Int]?
    public let isPrivate : Bool?
    public let image : Data?
    public let imageURL : URL?

    private enum CodingKeys: String, CodingKey {
        case name
        case type
        case parentId = "note_id"
        case tags
        case isPrivate = "is_private"
        case image
        case imageURL = "image_url"
    }

  }

}

public class ConversationParticipant: Codable {
  public let conversationId: Int
  public let createdBy: Int
  public let characterId: Int?
  public let userId: Int?

  private enum CodingKeys: String, CodingKey {
    case conversationId = "conversation_id"
    case createdBy = "created_by"
    case characterId = "character_id"
    case userId = "user_id"
  }
}

public class ConversationMessage: Codable {
  public let conversationId: Int
  public let createdBy: Int
  public let characterId: Int?
  public let userId: Int?
  public let message: String

  private enum CodingKeys: String, CodingKey {
    case conversationId = "conversation_id"
    case createdBy = "created_by"
    case characterId = "character_id"
    case userId = "user_id"
    case message
  }

}
