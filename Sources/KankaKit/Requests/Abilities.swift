//
//  Abilities.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Ability` requests.
public enum Abilities {
  /// - Returns: Request for `Ability`.
  public static func ability(id: Int, campaignId: Int) -> Request<Ability> {
    return Request<Ability>(path: "/campaigns/\(camapignId)/abilities/\(id)")
  }

  /**
  */
  public static func abilities(campaignId: Int) -> Request<[Ability]> {
    return Request<Ability>(path: "/campaigns/\(camapignId)/abilities")
  }

  public static func create(campaignId: Int, values: Ability.Create) throws -> Request<Ability> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Ability>(path: "/campaigns/\(campaignId)/abilities", method: method)
  }

}
