//
//  KankaError.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

class KankaError: Codable {
    /// Reason why Mastodon returned an error.
    let description: String

    private enum CodingKeys: String, CodingKey {
        case description = "error"
    }
}
