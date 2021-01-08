//
//  Locations.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Location` requests.
public enum Locations {
    /**
     All Locations

     You can get a list of all the locations of a campaign by using the following endpoint.

     - parameter campaignId: The identifier of the campaign.
     - returns: An initialized `Request`.
     */
    public static func locations(campaignId: Int) -> Request<[Location]> {
        return Request<[Location]>(path: "/campaigns/\(campaignId)/locations")
    }

    /**
     Location

     To get the details of a single location, use the following endpoint.

     - parameter id: The identifier of the location to retrieve.
     - parameter campaignId: The identifier of the campaign containing the `Location`.
     - returns: An initialized `Request`.
     */
    public static func location(id: Int, campaignId: Int) -> Request<Location> {
        return Request<Location>(path: "/campaigns/\(campaignId)/locations/\(id)")
    }

    public static func mapPoints(id: Int, campaignId: Int) -> Request<[LocationMapPoint]> {
        return Request<[LocationMapPoint]>(path: "/campaigns/\(campaignId)/locations/\(id)/map_points")
    }

    public static func create(campaignId: Int, values: Location.Create) throws -> Request<Location> {
        let data = try JSONEncoder().encode(values)
        let method = HTTPMethod.post(.data(data))
        return Request<Location>(path: "/campaigns/\(campaignId)/locations", method: method)
    }

    public static func update(id: Int, campaignId: Int, values: Location.Update) throws -> Request<Location> {
        let data = try JSONEncoder().encode(values)
        let method = HTTPMethod.put(.data(data))
        return Request<Location>(path: "/campaigns/\(campaignId)/locations/\(id)", method: method)
    }

    public static func delete(id: Int, campaignId: Int) throws -> Request<Location> {
        let method = HTTPMethod.delete(.empty)
        return Request<Location>(path: "/campaigns/\(campaignId)/locations/\(id)", method: method)
    }

}
