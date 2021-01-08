//
//  Items.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Item` requests.
public enum Items {
  /**
  All Items

You can get a list of all the items of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func items(campaignId: Int) -> Request<[Item]> {
    return Request<[Item]>(path: "/campaigns/\(campaignId)/items")
  }

  /**
  Item

To get the details of a single item, use the following endpoint.

- parameter id: The identifier of the item to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Item`.
- returns: An initialized `Request`.
*/
  public static func item(id: Int, campaignId: Int) -> Request<Item> {
    return Request<Item>(path: "/campaigns/\(campaignId)/items/\(id)")
  }

  public static func create(campaignId: Int, values: Item.Create) throws -> Request<Item>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Item>(path: "/campaigns/\(campaignId)/items", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Item.Update) throws
    -> Request<Item>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Item>(path: "/campaigns/\(campaignId)/items/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Item> {
    let method = HTTPMethod.delete(.empty)
    return Request<Item>(path: "/campaigns/\(campaignId)/items/\(id)", method: method)
  }

}
