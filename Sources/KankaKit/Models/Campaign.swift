//
//  Campaign.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Campaign: Codable {
  public let id: Int
  public let name: String
  public let locale: String
  public let entry: String
  public let image: URL
  public let imageFull: URL
  public let imageThumb: URL
  public let visibility: String
  public let createdAt: Date
  public let updatedAt: Date
  //   public let members

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case locale
    case entry
    case image
    case imageFull = "image_full"
    case imageThumb = "image_thumb"
    case visibility
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    // case members
  }
}

public class CampaignMember: Codable {
  public let id: Int
  public let user: User

  private enum CodingKeys: String, CodingKey {
    case id
    case user
  }
}
