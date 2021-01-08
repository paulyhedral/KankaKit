//
//  EntityInventories.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `EntityInventory` requests.
public enum EntityInventories {
  /**
  All EntityInventories

You can get a list of all the entityinventories of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func entityinventories(campaignId: Int) -> Request<[EntityInventory]> {
    return Request<[EntityInventory]>(path: "/campaigns/\(campaignId)/entityinventories")
  }

  public static func create(campaignId: Int, values: EntityInventory.Create) throws -> Request<
    EntityInventory
  > {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<EntityInventory>(
      path: "/campaigns/\(campaignId)/entityinventories", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: EntityInventory.Update) throws
    -> Request<EntityInventory>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<EntityInventory>(
      path: "/campaigns/\(campaignId)/entityinventories/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<EntityInventory> {
    let method = HTTPMethod.delete(.empty)
    return Request<EntityInventory>(
      path: "/campaigns/\(campaignId)/entityinventories/\(id)", method: method)
  }

}
