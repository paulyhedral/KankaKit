//
//  Timelines.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Timeline` requests.
public enum Timelines {
  /**
  All Timelines

You can get a list of all the timelines of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func timelines(campaignId: Int) -> Request<[Timeline]> {
    return Request<[Timeline]>(path: "/campaigns/\(campaignId)/timelines")
  }

  /**
  Timeline

To get the details of a single timeline, use the following endpoint.

- parameter id: The identifier of the timeline to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Timeline`.
- returns: An initialized `Request`.
*/
  public static func timeline(id: Int, campaignId: Int) -> Request<Timeline> {
    return Request<Timeline>(path: "/campaigns/\(campaignId)/timelines/\(id)")
  }

  public static func create(campaignId: Int, values: Timeline.Create) throws -> Request<Timeline> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Timeline>(path: "/campaigns/\(campaignId)/timelines", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Timeline.Update) throws
    -> Request<Timeline>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Timeline>(path: "/campaigns/\(campaignId)/timelines/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Timeline> {
    let method = HTTPMethod.delete(.empty)
    return Request<Timeline>(path: "/campaigns/\(campaignId)/timelines/\(id)", method: method)
  }

}
