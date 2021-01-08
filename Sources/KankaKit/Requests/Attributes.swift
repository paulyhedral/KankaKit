//
//  Attributes.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Attribute` requests.
public enum Attributes {
  /**
  All Attributes

You can get a list of all the attributes of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func attributes(campaignId: Int) -> Request<[Attribute]> {
    return Request<[Attribute]>(path: "/campaigns/\(campaignId)/attributes")
  }

  /**
  Attribute

To get the details of a single attribute, use the following endpoint.

- parameter id: The identifier of the attribute to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Attribute`.
- returns: An initialized `Request`.
*/
  public static func attribute(id: Int, campaignId: Int) -> Request<Attribute> {
    return Request<Attribute>(path: "/campaigns/\(campaignId)/attributes/\(id)")
  }

  public static func create(campaignId: Int, values: Attribute.Create) throws -> Request<Attribute>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Attribute>(path: "/campaigns/\(campaignId)/attributes", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Attribute.Update) throws
    -> Request<Attribute>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Attribute>(path: "/campaigns/\(campaignId)/attributes/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Attribute> {
    let method = HTTPMethod.delete(.empty)
    return Request<Attribute>(path: "/campaigns/\(campaignId)/attributes/\(id)", method: method)
  }

}
