//
//  EntityTag.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class EntityTag: Codable {
    public let id: Int
    public let entityId: Int
    public let tagId: Int

    private enum CodingKeys: String, CodingKey {
        case id
        case entityId = "entity_id"
        case tagId = "tag_id"
    }

    public struct Create: Codable {
        public let entityId : Int
        public let tagId : Int

        private enum CodingKeys: String, CodingKey {
            case entityId = "entity_id"
            case tagId = "tag_id"
        }
    }

    public struct Update: Codable {
        public let entityId : Int
        public let tagId : Int

        private enum CodingKeys: String, CodingKey {
            case entityId = "entity_id"
            case tagId = "tag_id"
        }
    }

}
