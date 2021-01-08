//
//  Timeline.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Timeline: Codable {
    public let id: Int
    public let name: String
    public let entry: String?
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
    public let revertOrder: Bool
    public let eras: [TimelineEra]

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
        case revertOrder = "revert_order"
        case eras
    }

    public struct Create: Codable {
    }

    public struct Update: Codable {

    }

}

public class TimelineEra: Codable {
    public let name: String
    public let abbreviation: String
    public let startYear: Int
    public let endYear: Int
    public let elements: [TimelineElement]

    private enum CodingKeys: String, CodingKey {
        case name
        case abbreviation
        case startYear = "start_year"
        case endYear = "end_year"
        case elements
    }

    public struct Create: Codable {
        public let timelineId : Int
        public let era : String
        public let abbreviation : String?
        public let startYear : Int?
        public let endYear : Int?
        public let visibility : Visibility = .all

        private enum CodingKeys: String, CodingKey {
            case timelineId = "timeline_id"
            case era
            case abbreviation
            case startYear = "start_year"
            case endYear = "end_year"
            case visibility
        }
    }

    public struct Update: Codable {
        public let timelineId : Int
        public let era : String
        public let abbreviation : String?
        public let startYear : Int?
        public let endYear : Int?
        public let visibility : Visibility = .all

        private enum CodingKeys: String, CodingKey {
            case timelineId = "timeline_id"
            case era
            case abbreviation
            case startYear = "start_year"
            case endYear = "end_year"
            case visibility
        }
    }

}

public class TimelineElement: Codable {
    public let id: Int
    public let name: String
    public let entry: String?
    public let eraId: Int
    public let timelineId: Int
    public let entityId: Int
    public let date: String?
    public let color: String
    public let position: Int
    public let visibility: String
    public let icon: String?

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case entry
        case eraId = "era_id"
        case timelineId = "timeline_id"
        case entityId = "entity_id"
        case date
        case color = "colour"
        case position
        case visibility
        case icon
    }

    public struct Create: Codable {
        public let name : String
        public let entityId : Int
        public let timelineId : Int
        public let eraId : Int
        public let entry : String?
        public let date : String?
        public let color : String?
        public let position : Int?
        public let visibility : Visibility = .all

        private enum CodingKeys: String, CodingKey {
            case name
            case entityId = "entity_id"
            case timelineId = "timeline_id"
            case eraId = "era_id"
            case entry
            case date
            case color = "colour"
            case position
            case visibility
        }
    }

    public struct Update: Codable {
        public let name : String
        public let entityId : Int
        public let timelineId : Int
        public let eraId : Int
        public let entry : String?
        public let date : String?
        public let color : String?
        public let position : Int?
        public let visibility : Visibility = .all

        private enum CodingKeys: String, CodingKey {
            case name
            case entityId = "entity_id"
            case timelineId = "timeline_id"
            case eraId = "era_id"
            case entry
            case date
            case color = "colour"
            case position
            case visibility
        }
    }

}
