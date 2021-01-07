//
//  EntityMention.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class EntityMention: Codable {
  public let createdAt: Date
  public let createdBy: Int?
  public let id: Int
  public let updatedAt: Date
  public let updatedBy: Int?

  private enum CodingKeys: String, CodingKey {
    case createdAt = "created_at"
    case createdBy = "created_by"
    case id
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
  }
}
