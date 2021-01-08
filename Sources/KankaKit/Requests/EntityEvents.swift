//
//  EntityEvents.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `EntityEvent` requests.
public enum EntityEvents {
  /**
  All EntityEvents

You can get a list of all the entityevents of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func entityevents(campaignId: Int) -> Request<[EntityEvent]> {
    return Request<[EntityEvent]>(path: "/campaigns/\(campaignId)/entityevents")
  }

  /**
  EntityEvent

To get the details of a single entityevent, use the following endpoint.

- parameter id: The identifier of the entityevent to retrieve.
- parameter campaignId: The identifier of the campaign containing the `EntityEvent`.
- returns: An initialized `Request`.
*/
  public static func entityevent(id: Int, campaignId: Int) -> Request<EntityEvent> {
    return Request<EntityEvent>(path: "/campaigns/\(campaignId)/entityevents/\(id)")
  }

  public static func create(campaignId: Int, values: EntityEvent.Create) throws -> Request<
    EntityEvent
  > {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<EntityEvent>(path: "/campaigns/\(campaignId)/entityevents", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: EntityEvent.Update) throws
    -> Request<EntityEvent>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<EntityEvent>(path: "/campaigns/\(campaignId)/entityevents/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<EntityEvent> {
    let method = HTTPMethod.delete(.empty)
    return Request<EntityEvent>(path: "/campaigns/\(campaignId)/entityevents/\(id)", method: method)
  }

}
