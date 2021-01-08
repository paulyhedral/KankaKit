//
//  Visibility.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public enum Visibility: String, Codable {
    case all
    case admin
    case adminSelf
    case members
    case `self`
}
