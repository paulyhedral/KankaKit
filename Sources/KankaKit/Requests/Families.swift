//
//  Families.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Family` requests.
public enum Families {
  /**
  All Families

You can get a list of all the families of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func families(campaignId: Int) -> Request<[Family]> {
    return Request<[Family]>(path: "/campaigns/\(campaignId)/families")
  }

  /**
  Family

To get the details of a single family, use the following endpoint.

- parameter id: The identifier of the family to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Family`.
- returns: An initialized `Request`.
*/
  public static func family(id: Int, campaignId: Int) -> Request<Family> {
    return Request<Family>(path: "/campaigns/\(campaignId)/families/\(id)")
  }

  public static func create(campaignId: Int, values: Family.Create) throws -> Request<Family> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Family>(path: "/campaigns/\(campaignId)/families", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Family.Update) throws
    -> Request<Family>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Family>(path: "/campaigns/\(campaignId)/families/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Family> {
    let method = HTTPMethod.delete(.empty)
    return Request<Family>(path: "/campaigns/\(campaignId)/families/\(id)", method: method)
  }

}
