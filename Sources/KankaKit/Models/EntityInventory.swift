//
//  EntityInventory.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class EntityInventory: Codable {
    public let createdAt: Date
    public let createdBy: Int?
    public let entityId: Int
    public let id: Int
    public let itemId: Int
    public let visibility: Visibility
    public let amount: String
    public let position: String
    public let updatedAt: Date
    public let updatedBy: Int?

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case createdBy = "created_by"
        case entityId = "entity_id"
        case id
        case itemId = "item_id"
        case visibility
        case amount
        case position
        case updatedAt = "updated_at"
        case updatedBy = "updated_by"
    }

    public struct Create: Codable {
        public let itemId : Int
        public let amount : String?
        public let position : String?
        public let entityId : Int
        public let visibility : Visibility = .all

        private enum CodingKeys: String, CodingKey {
            case itemId = "item_id"
            case amount
            case position
            case entityId = "entity_id"
            case visibility
        }
    }

    public struct Update: Codable {
        public let itemId : Int
        public let amount : String?
        public let position : String?
        public let entityId : Int
        public let visibility : Visibility = .all

        private enum CodingKeys: String, CodingKey {
            case itemId = "item_id"
            case amount
            case position
            case entityId = "entity_id"
            case visibility
        }
    }

}
