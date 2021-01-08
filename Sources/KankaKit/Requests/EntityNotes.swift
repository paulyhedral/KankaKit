//
//  EntityNotes.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `EntityNote` requests.
public enum EntityNotes {
  /**
  All EntityNotes

You can get a list of all the entitynotes of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func entitynotes(campaignId: Int) -> Request<[EntityNote]> {
    return Request<[EntityNote]>(path: "/campaigns/\(campaignId)/entitynotes")
  }

  /**
  EntityNote

To get the details of a single entitynote, use the following endpoint.

- parameter id: The identifier of the entitynote to retrieve.
- parameter campaignId: The identifier of the campaign containing the `EntityNote`.
- returns: An initialized `Request`.
*/
  public static func entitynote(id: Int, campaignId: Int) -> Request<EntityNote> {
    return Request<EntityNote>(path: "/campaigns/\(campaignId)/entitynotes/\(id)")
  }

  public static func create(campaignId: Int, values: EntityNote.Create) throws -> Request<
    EntityNote
  > {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<EntityNote>(path: "/campaigns/\(campaignId)/entitynotes", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: EntityNote.Update) throws
    -> Request<EntityNote>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<EntityNote>(path: "/campaigns/\(campaignId)/entitynotes/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<EntityNote> {
    let method = HTTPMethod.delete(.empty)
    return Request<EntityNote>(path: "/campaigns/\(campaignId)/entitynotes/\(id)", method: method)
  }

}
