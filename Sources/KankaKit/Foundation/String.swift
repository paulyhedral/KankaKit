//
//  Client.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/22/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

extension String {
  func condensed(separator: String = "") -> String {
    let components = self.components(separatedBy: .whitespaces)
    return components.filter { !$0.isEmpty }.joined(separator: separator)
  }
}
