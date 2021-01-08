//
//  Entities.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Entity` requests.
public enum Entities {
  /// - Returns: Request for `Entity`.
  public static func entity(id: Int, campaignId: Int) -> Request<Entity> {
    return Request<Entity>(path: "/campaigns/\(campaignId)/entities/\(id)")
  }

}
