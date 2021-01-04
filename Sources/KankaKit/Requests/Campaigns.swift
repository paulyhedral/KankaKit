//
//  Campaigns.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Campaign` requests.
public enum Campaigns {
  /// Gets the user's campaigns.
  ///
  /// - Returns: Request for `Campaign`.
  public static func campaigns(range: RequestRange = .default) -> Request<[Campaign]> {
    return Request<[Campaign]>(path: "/campaigns")
  }

  public static func campaign(id: Int) -> Request<Campaign> {
    return Request<Campaign>(path: "/campaigns/\(id)")
  }

  public static func users(id: Int) -> Request<[User]> {
    return Request<[User]>(path: "/campaigns/\(id)/users")
  }
}
