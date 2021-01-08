//
//  EntityFiles.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `EntityFile` requests.
public enum EntityFiles {
  /**
  All EntityFiles

You can get a list of all the entityfiles of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func entityfiles(campaignId: Int) -> Request<[EntityFile]> {
    return Request<[EntityFile]>(path: "/campaigns/\(campaignId)/entityfiles")
  }

  /**
  EntityFile

To get the details of a single entityfile, use the following endpoint.

- parameter id: The identifier of the entityfile to retrieve.
- parameter campaignId: The identifier of the campaign containing the `EntityFile`.
- returns: An initialized `Request`.
*/
  public static func entityfile(id: Int, campaignId: Int) -> Request<EntityFile> {
    return Request<EntityFile>(path: "/campaigns/\(campaignId)/entityfiles/\(id)")
  }

  public static func create(campaignId: Int, values: EntityFile.Create) throws -> Request<
    EntityFile
  > {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<EntityFile>(path: "/campaigns/\(campaignId)/entityfiles", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<EntityFile> {
    let method = HTTPMethod.delete(.empty)
    return Request<EntityFile>(path: "/campaigns/\(campaignId)/entityfiles/\(id)", method: method)
  }

}
