//
//  Profile.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Profile: Codable {
    public let id: Int
    public let name: String
    public let avatar : URL
    public let avatarThumb : URL
    public let locale : String
    public let timezone : String
    public let dateFormat : String
    public let defaultPagination : Int
    public let lastCampaignId : Int
    public let isPatreon : Bool

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case avatar
        case avatarThumb = "avatar_thumb"
        case locale
        case timezone
        case dateFormat = "date_format"
        case defaultPagination = "default_pagination"
        case lastCampaignId = "last_campaign_id"
        case isPatreon = "is_patreon"
    }
}
