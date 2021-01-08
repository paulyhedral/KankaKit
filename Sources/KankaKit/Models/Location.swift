//
//  Location.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Location: Codable {
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
    public let parentLocationId: Int
    public let map: URL
    public let isMapPrivate: Int
    public let type: String?

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
        case parentLocationId = "parent_location_id"
        case map
        case isMapPrivate
        case type
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


public class LocationMapPoint : Codable {
    public let targetEntityId : Int
    public let axisX : Int
    public let axisY : Int
    public let color : Color
    public let size : Size
    public let icon : String
    public let shape : Shape 
    public let name : String?
    public let createdAt : Date
    public let updatedAt : Date

    private enum CodingKeys: String, CodingKey {
        case targetEntityId = "target_entity_id"
        case axisX = "axis_x"
        case axisY = "axis_y"
        case color = "colour"
        case size
        case icon
        case shape
        case name
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    public struct Create: Codable {
        public let targetEntityId : Int?
        public let axisX : Int
        public let axisY : Int
        public let color : Color
        public let size : Size
        public let icon : String
        public let shape : Shape
        public let name : String?
        public let locationId : Int?

        private enum CodingKeys: String, CodingKey {
            case targetEntityId = "target_entity_id"
            case axisX = "axis_x"
            case axisY = "axis_y"
            case color = "colour"
            case size
            case icon
            case shape
            case name
            case locationId = "location_id"
        }
    }

}
