//
//  Relations.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Relation` requests.
public enum Relations {
  /**
  All Relations

You can get a list of all the relations of an entity by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func relations(entityId: Int, campaignId: Int) -> Request<[Relation]> {
    return Request<[Relation]>(path: "/campaigns/\(campaignId)/entities/\(entityId)/relations")
  }
  /**
  All campaign Relations

You can get a list of all the relations of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func campaignRelations(campaignId: Int) -> Request<[Relation]> {
    return Request<[Relation]>(path: "/campaigns/\(campaignId)/relations")
  }

  /**
  Relation

To get the details of a single relation, use the following endpoint.

- parameter id: The identifier of the relation to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Relation`.
- returns: An initialized `Request`.
*/
  public static func relation(id: Int, entityId: Int, campaignId: Int) -> Request<Relation> {
    return Request<Relation>(path: "/campaigns/\(campaignId)/entities/\(entityId)/relations/\(id)")
  }

  public static func create(entityId: Int, campaignId: Int, values: Relation.Create) throws
    -> Request<Relation>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Relation>(path: "/campaigns/\(campaignId)/relations", method: method)
  }

  public static func update(id: Int, entityId: Int, campaignId: Int, values: Relation.Update) throws
    -> Request<Relation>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Relation>(
      path: "/campaigns/\(campaignId)/entities/\(entityId)/relations/\(id)", method: method)
  }

  public static func delete(id: Int, entityId: Int, campaignId: Int) throws -> Request<Relation> {
    let method = HTTPMethod.delete(.empty)
    return Request<Relation>(
      path: "/campaigns/\(campaignId)/entities/\(entityId)/relations/\(id)",
      method: method)
  }

}
