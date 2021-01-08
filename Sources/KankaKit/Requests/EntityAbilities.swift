//
//  EntityAbilities.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `EntityAbility` requests.
public enum EntityAbilities {
  /**
  All EntityAbilities

You can get a list of all the entity_abilities of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func entityAbilities(campaignId: Int) -> Request<[EntityAbility]> {
    return Request<[EntityAbility]>(path: "/campaigns/\(campaignId)/entity_abilities")
  }

  /**
  EntityAbility

To get the details of a single entityability, use the following endpoint.

- parameter id: The identifier of the entityability to retrieve.
- parameter campaignId: The identifier of the campaign containing the `EntityAbility`.
- returns: An initialized `Request`.
*/
  public static func entityability(id: Int, campaignId: Int) -> Request<EntityAbility> {
    return Request<EntityAbility>(path: "/campaigns/\(campaignId)/entity_abilities/\(id)")
  }

  public static func create(campaignId: Int, values: EntityAbility.Create) throws -> Request<
    EntityAbility
  > {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<EntityAbility>(path: "/campaigns/\(campaignId)/entity_abilities", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: EntityAbility.Update) throws
    -> Request<EntityAbility>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<EntityAbility>(
      path: "/campaigns/\(campaignId)/entity_abilities/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<EntityAbility> {
    let method = HTTPMethod.delete(.empty)
    return Request<EntityAbility>(
      path: "/campaigns/\(campaignId)/entity_abilities/\(id)", method: method)
  }

}
