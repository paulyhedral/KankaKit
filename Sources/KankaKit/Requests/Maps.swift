//
//  Maps.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Map` requests.
public enum Maps {
  /**
  All Maps

You can get a list of all the maps of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func maps(campaignId: Int) -> Request<[Map]> {
    return Request<[Map]>(path: "/campaigns/\(campaignId)/maps")
  }

  /**
  Map

To get the details of a single map, use the following endpoint.

- parameter id: The identifier of the map to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Map`.
- returns: An initialized `Request`.
*/
  public static func map(id: Int, campaignId: Int) -> Request<Map> {
    return Request<Map>(path: "/campaigns/\(campaignId)/maps/\(id)")
  }

  public static func create(campaignId: Int, values: Map.Create) throws -> Request<Map> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Map>(path: "/campaigns/\(campaignId)/maps", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Map.Update) throws
    -> Request<Map>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Map>(path: "/campaigns/\(campaignId)/maps/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Map> {
    let method = HTTPMethod.delete(.empty)
    return Request<Map>(path: "/campaigns/\(campaignId)/maps/\(id)", method: method)
  }

}
