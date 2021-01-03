//
//  Client.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/22/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
  var pagination: Pagination? {
    return allHeaderFields["Link"].flatMap { $0 as? String }.map(Pagination.init)
  }
}
