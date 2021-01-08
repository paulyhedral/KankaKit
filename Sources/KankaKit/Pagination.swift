//
//  Pagination.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public struct Pagination : Codable {
  public let first: URL?
  public let last: URL?
  public let next: URL?
  public let previous: URL?
}

//extension Pagination {
//  init(string: String) {
//    let links =
//      string
//      .components(separatedBy: ",")
//      .compactMap(PaginationItem.init)
//
//    var nextLink: RequestRange?
//    var previousLink: RequestRange?
//
//    for link in links {
//      switch link.type {
//      case .first: break
//      case .last: break
//      case .next: nextLink = .max(id: link.id, limit: link.limit)
//      case .prev: previousLink = .since(id: link.id, limit: link.limit)
//      }
//    }
//
//    self.next = nextLink
//    self.previous = previousLink
//  }
//}
//
//// MARK: - Equatable
//extension Pagination: Equatable {}
