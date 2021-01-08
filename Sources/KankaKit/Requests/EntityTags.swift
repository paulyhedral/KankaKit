//
//  EntityTags.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `EntityTag` requests.
public enum EntityTags {
  /**
  All EntityTags

You can get a list of all the entitytags of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func entitytags(campaignId: Int) -> Request<[EntityTag]> {
    return Request<[EntityTag]>(path: "/campaigns/\(campaignId)/entitytags")
  }

  /**
  EntityTag

To get the details of a single entitytag, use the following endpoint.

- parameter id: The identifier of the entitytag to retrieve.
- parameter campaignId: The identifier of the campaign containing the `EntityTag`.
- returns: An initialized `Request`.
*/
  public static func entitytag(id: Int, campaignId: Int) -> Request<EntityTag> {
    return Request<EntityTag>(path: "/campaigns/\(campaignId)/entitytags/\(id)")
  }

  public static func create(campaignId: Int, values: EntityTag.Create) throws -> Request<EntityTag>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<EntityTag>(path: "/campaigns/\(campaignId)/entitytags", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: EntityTag.Update) throws
    -> Request<EntityTag>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<EntityTag>(path: "/campaigns/\(campaignId)/entitytags/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<EntityTag> {
    let method = HTTPMethod.delete(.empty)
    return Request<EntityTag>(path: "/campaigns/\(campaignId)/entitytags/\(id)", method: method)
  }

}
