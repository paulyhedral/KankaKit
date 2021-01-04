//
//  Pagination.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public struct Pagination {
  public let first: RequestRange?
  public let last: RequestRange?
  /// The request range for fetching the next page.
  public let next: RequestRange?
  /// The request range for fetching the previous page.
  public let previous: RequestRange?
}

extension Pagination {
  init(string: String) {
    let links =
      string
      .components(separatedBy: ",")
      .compactMap(PaginationItem.init)

    var nextLink: RequestRange?
    var previousLink: RequestRange?

    for link in links {
      switch link.type {
      case .first: break
      case .last: break
      case .next: nextLink = .max(id: link.id, limit: link.limit)
      case .prev: previousLink = .since(id: link.id, limit: link.limit)
      }
    }

    self.next = nextLink
    self.previous = previousLink
  }
}

// MARK: - Equatable
extension Pagination: Equatable {}
