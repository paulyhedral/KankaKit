//
//  TimelineEras.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `TimelineEra` requests.
public enum TimelineEras {
    /**
     All TimelineEras

     You can get a list of all the timelineeras of a campaign by using the following endpoint.

     - parameter campaignId: The identifier of the campaign.
     - returns: An initialized `Request`.
     */
    public static func timelineEras(timelineId: Int, campaignId: Int) -> Request<[TimelineEra]> {
        return Request<[TimelineEra]>(path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_eras")
    }

    /**
     TimelineEra

     To get the details of a single timeline era, use the following endpoint.

     - parameter id: The identifier of the timeline era to retrieve.
     - parameter campaignId: The identifier of the campaign containing the `TimelineEra`.
     - returns: An initialized `Request`.
     */
    public static func timelineEra(id: Int, timelineId: Int, campaignId: Int) -> Request<TimelineEra> {
        return Request<TimelineEra>(path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_eras/\(id)")
    }

    public static func create(timelineId: Int, campaignId: Int, values: TimelineEra.Create) throws -> Request<TimelineEra> {
        let data = try JSONEncoder().encode(values)
        let method = HTTPMethod.post(.data(data))
        return Request<TimelineEra>(
            path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_eras", method: method)
    }

    public static func update(id: Int, timelineId: Int, campaignId: Int, values: TimelineEra.Update) throws -> Request<TimelineEra> {
        let data = try JSONEncoder().encode(values)
        let method = HTTPMethod.put(.data(data))
        return Request<TimelineEra>(
            path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_eras/\(id)", method: method)
    }

    public static func delete(id: Int, timelineId: Int, campaignId: Int) throws -> Request<TimelineEra> {
        let method = HTTPMethod.delete(.empty)
        return Request<TimelineEra>(
            path: "/campaigns/\(campaignId)/timelines/\(timelineId)/timeline_eras/\(id)", method: method)
    }

}
