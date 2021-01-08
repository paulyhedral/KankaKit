//
//  Races.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Race` requests.
public enum Races {
  /**
  All Races

You can get a list of all the races of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func races(campaignId: Int) -> Request<[Race]> {
    return Request<[Race]>(path: "/campaigns/\(campaignId)/races")
  }

  /**
  Race

To get the details of a single race, use the following endpoint.

- parameter id: The identifier of the race to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Race`.
- returns: An initialized `Request`.
*/
  public static func race(id: Int, campaignId: Int) -> Request<Race> {
    return Request<Race>(path: "/campaigns/\(campaignId)/races/\(id)")
  }

  public static func create(campaignId: Int, values: Race.Create) throws -> Request<Race> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Race>(path: "/campaigns/\(campaignId)/races", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Race.Update) throws
    -> Request<Race>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Race>(path: "/campaigns/\(campaignId)/races/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Race> {
    let method = HTTPMethod.delete(.empty)
    return Request<Race>(path: "/campaigns/\(campaignId)/races/\(id)", method: method)
  }

}
