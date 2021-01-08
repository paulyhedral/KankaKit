//
//  Journals.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Journal` requests.
public enum Journals {
  /**
  All Journals

You can get a list of all the journals of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func journals(campaignId: Int) -> Request<[Journal]> {
    return Request<[Journal]>(path: "/campaigns/\(campaignId)/journals")
  }

  /**
  Journal

To get the details of a single journal, use the following endpoint.

- parameter id: The identifier of the journal to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Journal`.
- returns: An initialized `Request`.
*/
  public static func journal(id: Int, campaignId: Int) -> Request<Journal> {
    return Request<Journal>(path: "/campaigns/\(campaignId)/journals/\(id)")
  }

  public static func create(campaignId: Int, values: Journal.Create) throws -> Request<Journal> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Journal>(path: "/campaigns/\(campaignId)/journals", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Journal.Update) throws
    -> Request<Journal>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Journal>(path: "/campaigns/\(campaignId)/journals/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Journal> {
    let method = HTTPMethod.delete(.empty)
    return Request<Journal>(path: "/campaigns/\(campaignId)/journals/\(id)", method: method)
  }

}
