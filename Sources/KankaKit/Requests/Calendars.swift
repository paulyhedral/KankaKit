//
//  Calendars.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Calendar` requests.
public enum Calendars {
  /**
  All Calendars

You can get a list of all the calendars of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func calendars(campaignId: Int) -> Request<[Calendar]> {
    return Request<[Calendar]>(path: "/campaigns/\(campaignId)/calendars")
  }

  /**
  Calendar

To get the details of a single calendar, use the following endpoint.

- parameter id: The identifier of the calendar to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Calendar`.
- returns: An initialized `Request`.
*/
  public static func calendar(id: Int, campaignId: Int) -> Request<Calendar> {
    return Request<Calendar>(path: "/campaigns/\(campaignId)/calendars/\(id)")
  }

  public static func create(campaignId: Int, values: Calendar.Create) throws -> Request<Calendar> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Calendar>(path: "/campaigns/\(campaignId)/calendars", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Calendar.Update) throws
    -> Request<Calendar>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Calendar>(path: "/campaigns/\(campaignId)/calendars/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Calendar> {
    let method = HTTPMethod.delete(.empty)
    return Request<Calendar>(path: "/campaigns/\(campaignId)/calendars/\(id)", method: method)
  }

}
