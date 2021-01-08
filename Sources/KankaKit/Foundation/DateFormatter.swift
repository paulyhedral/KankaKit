//
//  Client.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/22/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

extension DateFormatter {

    static let kankaFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()

    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SZ"
    dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
    dateFormatter.locale = Locale(identifier: "en_US_POSIX")

    return dateFormatter
  }()
    
}
