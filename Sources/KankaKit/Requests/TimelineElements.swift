//
//  TimelineElements.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `TimelineElement` requests.
public enum TimelineElements {
  /**
  All TimelineElements

You can get a list of all the timelineelements of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func TimelineElements(timelineId: Int, campaignId: Int) -> Request<
    [TimelineElement]
  > {
    return Request<[TimelineElement]>(
      path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_elements")
  }

  /**
  TimelineElement

To get the details of a single timeline era, use the following endpoint.

- parameter id: The identifier of the timeline era to retrieve.
- parameter campaignId: The identifier of the campaign containing the `TimelineElement`.
- returns: An initialized `Request`.
*/
  public static func TimelineElement(id: Int, timelineId: Int, campaignId: Int) -> Request<
    TimelineElement
  > {
    return Request<TimelineElement>(
      path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_elements/\(id)")
  }

  public static func create(timelineId: Int, campaignId: Int, values: TimelineElement.Create) throws
    -> Request<TimelineElement>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<TimelineElement>(
      path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_elements", method: method)
  }

  public static func update(
    id: Int, timelineId: Int, campaignId: Int, values: TimelineElement.Update
  )
    throws
    -> Request<TimelineElement>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<TimelineElement>(
      path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_elements/\(id)",
      method: method)
  }

  public static func delete(id: Int, timelineId: Int, campaignId: Int) throws -> Request<
    TimelineElement
  > {
    let method = HTTPMethod.delete(.empty)
    return Request<TimelineElement>(
      path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_elements/\(id)",
      method: method)
  }

}
