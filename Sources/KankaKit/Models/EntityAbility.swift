//
//  EntityAbility.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class EntityAbility : Codable {
    public let id: Int
    public let createdAt: Date
    public let createdBy: Int
    public let updatedAt: Date
    public let updatedBy: Int
    public let visibility : Visibility
    public let charges: Int
    public let entityId: Int
    public let parentId : Int?

    private enum CodingKeys : String, CodingKey {
        case id
        case entityId = "entity_id"
        case createdAt = "created_at"
        case createdBy = "created_by"
        case updatedAt = "updated_at"
        case updatedBy = "updated_by"
        case parentId = "ability_id"
        case charges
        case visibility
    }

    public struct Create : Codable {
        public let abilityId : Int
        public let visibility : Visibility = .all
        public let charges : Int?

        private enum CodingKeys : String, CodingKey {
            case abilityId = "ability_id"
            case visibility
            case charges
        }
    }

    public struct Update : Codable {
        public let abilityId : Int
        public let visibility : Visibility = .all
        public let charges : Int?

        private enum CodingKeys : String, CodingKey {
            case abilityId = "ability_id"
            case visibility
            case charges
        }
    }
}
