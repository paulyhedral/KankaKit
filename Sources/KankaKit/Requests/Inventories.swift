//
//  Inventories.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Inventory` requests.
public enum Inventories {
  /**
  All Inventories

You can get a list of all the inventories of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func inventories(campaignId: Int) -> Request<[Inventory]> {
    return Request<[Inventory]>(path: "/campaigns/\(campaignId)/inventories")
  }

  public static func create(campaignId: Int, values: Inventory.Create) throws -> Request<Inventory>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Inventory>(path: "/campaigns/\(campaignId)/inventories", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Inventory.Update) throws
    -> Request<Inventory>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Inventory>(path: "/campaigns/\(campaignId)/inventories/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Inventory> {
    let method = HTTPMethod.delete(.empty)
    return Request<Inventory>(path: "/campaigns/\(campaignId)/inventories/\(id)", method: method)
  }

}
