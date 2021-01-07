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
  /**
  All Abilities

You can get a list of all the abilities of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func abilities(campaignId: Int) -> Request<[Ability]> {
    return Request<[Ability]>(path: "/campaigns/\(campaignId)/abilities")
  }

  /**
  Ability

To get the details of a single ability, use the following endpoint.

- parameter id: The identifier of the ability to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Ability`.
- returns: An initialized `Request`.
*/
  public static func ability(id: Int, campaignId: Int) -> Request<Ability> {
    return Request<Ability>(path: "/campaigns/\(campaignId)/abilities/\(id)")
  }

  public static func create(campaignId: Int, values: Ability.Create) throws -> Request<Ability> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Ability>(path: "/campaigns/\(campaignId)/abilities", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Ability.Update) throws
    -> Request<Ability>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Ability>(path: "/campaigns/\(campaignId)/abilities/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Ability> {
    let method = HTTPMethod.delete(.empty)
    return Request<Ability>(path: "/campaigns/\(campaignId)/abilities/\(id)", method: method)
  }

}
