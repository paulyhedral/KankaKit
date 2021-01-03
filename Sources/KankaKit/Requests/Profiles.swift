//
//  Profiles.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Profile` requests.
public enum Profiles {
    /// Gets the current profile.
    ///
    /// - Returns: Request for `Profile`.
    public static func current() -> Request<Profile> {
        return Request<Profile>(path: "/profile")
    }
}
