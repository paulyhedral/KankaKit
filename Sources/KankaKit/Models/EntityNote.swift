//
//  EntityNote.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class EntityNote: Codable {
    public let createdAt: Date
    public let createdBy: Int?
    public let id: Int
    public let updatedAt: Date
    public let updatedBy: Int?
    public let entityId: Int
    public let entry: String
    public let entryParsed: String
    public let visibility: Visibility
    public let name: String

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case createdBy = "created_by"
        case id
        case updatedAt = "updated_at"
        case updatedBy = "updated_by"
        case entityId = "entity_id"
        case entry
        case entryParsed = "entry_parsed"
        case visibility
        case name
    }

    public struct Create: Codable {
        public let name : String
        public let entry : String?
        public let entityId : Int
        public let visibility : Visibility = .all

        private enum CodingKeys: String, CodingKey {
            case name
            case entry
            case entityId = "entity_id"
            case visibility
        }
    }

    public struct Update: Codable {
        public let name : String
        public let entry : String?
        public let entityId : Int
        public let visibility : Visibility = .all

        private enum CodingKeys: String, CodingKey {
            case name
            case entry
            case entityId = "entity_id"
            case visibility
        }
    }

}
