//
//  Request.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public struct Request<Model : Codable> {
    let path : String
    let method : HTTPMethod

    init(path : String, method : HTTPMethod = .get(.empty)) {
        self.path = path
        self.method = method
    }
}
