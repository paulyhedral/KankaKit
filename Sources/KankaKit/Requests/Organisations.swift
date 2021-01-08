//
//  Organisations.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Organisation` requests.
public enum Organisations {
  /**
  All Organisations

You can get a list of all the organisations of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func organisations(campaignId: Int) -> Request<[Organisation]> {
    return Request<[Organisation]>(path: "/campaigns/\(campaignId)/organisations")
  }

  /**
  Organisation

To get the details of a single organisation, use the following endpoint.

- parameter id: The identifier of the organisation to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Organisation`.
- returns: An initialized `Request`.
*/
  public static func organisation(id: Int, campaignId: Int) -> Request<Organisation> {
    return Request<Organisation>(path: "/campaigns/\(campaignId)/organisations/\(id)")
  }

  public static func create(campaignId: Int, values: Organisation.Create) throws -> Request<
    Organisation
  > {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Organisation>(path: "/campaigns/\(campaignId)/organisations", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Organisation.Update) throws
    -> Request<Organisation>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Organisation>(
      path: "/campaigns/\(campaignId)/organisations/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Organisation> {
    let method = HTTPMethod.delete(.empty)
    return Request<Organisation>(
      path: "/campaigns/\(campaignId)/organisations/\(id)", method: method)
  }

}
