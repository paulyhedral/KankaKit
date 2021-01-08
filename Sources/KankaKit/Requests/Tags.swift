//
//  Tags.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Tag` requests.
public enum Tags {
  /**
  All Tags

You can get a list of all the tags of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func tags(campaignId: Int) -> Request<[Tag]> {
    return Request<[Tag]>(path: "/campaigns/\(campaignId)/tags")
  }

  /**
  Tag

To get the details of a single tag, use the following endpoint.

- parameter id: The identifier of the tag to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Tag`.
- returns: An initialized `Request`.
*/
  public static func tag(id: Int, campaignId: Int) -> Request<Tag> {
    return Request<Tag>(path: "/campaigns/\(campaignId)/tags/\(id)")
  }

  public static func create(campaignId: Int, values: Tag.Create) throws -> Request<Tag> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Tag>(path: "/campaigns/\(campaignId)/tags", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Tag.Update) throws
    -> Request<Tag>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Tag>(path: "/campaigns/\(campaignId)/tags/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Tag> {
    let method = HTTPMethod.delete(.empty)
    return Request<Tag>(path: "/campaigns/\(campaignId)/tags/\(id)", method: method)
  }

}
