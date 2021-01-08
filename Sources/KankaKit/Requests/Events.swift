//
//  Events.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Event` requests.
public enum Events {
  /**
  All Events

You can get a list of all the events of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func events(campaignId: Int) -> Request<[Event]> {
    return Request<[Event]>(path: "/campaigns/\(campaignId)/events")
  }

  /**
  Event

To get the details of a single event, use the following endpoint.

- parameter id: The identifier of the event to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Event`.
- returns: An initialized `Request`.
*/
  public static func event(id: Int, campaignId: Int) -> Request<Event> {
    return Request<Event>(path: "/campaigns/\(campaignId)/events/\(id)")
  }

  public static func create(campaignId: Int, values: Event.Create) throws -> Request<Event> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Event>(path: "/campaigns/\(campaignId)/events", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Event.Update) throws
    -> Request<Event>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Event>(path: "/campaigns/\(campaignId)/events/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Event> {
    let method = HTTPMethod.delete(.empty)
    return Request<Event>(path: "/campaigns/\(campaignId)/events/\(id)", method: method)
  }

}
