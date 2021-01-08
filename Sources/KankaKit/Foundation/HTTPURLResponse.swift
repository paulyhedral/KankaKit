//
//  Client.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/22/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

extension HTTPURLResponse {

    var rateLimit : Int? {
        return self.allHeaderFields["X-RateLimit-Limit"].compactMap { $0 as? Int }.first
    }

    var remainingRequests : Int? {
        return self.allHeaderFields["X-RateLimit-Remaining"].compactMap { $0 as? Int }.first
    }

}
