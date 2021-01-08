//
//  Notes.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Note` requests.
public enum Notes {
  /**
  All Notes

You can get a list of all the notes of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func notes(campaignId: Int) -> Request<[Note]> {
    return Request<[Note]>(path: "/campaigns/\(campaignId)/notes")
  }

  /**
  Note

To get the details of a single note, use the following endpoint.

- parameter id: The identifier of the note to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Note`.
- returns: An initialized `Request`.
*/
  public static func note(id: Int, campaignId: Int) -> Request<Note> {
    return Request<Note>(path: "/campaigns/\(campaignId)/notes/\(id)")
  }

  public static func create(campaignId: Int, values: Note.Create) throws -> Request<Note> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Note>(path: "/campaigns/\(campaignId)/notes", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Note.Update) throws
    -> Request<Note>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Note>(path: "/campaigns/\(campaignId)/notes/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Note> {
    let method = HTTPMethod.delete(.empty)
    return Request<Note>(path: "/campaigns/\(campaignId)/notes/\(id)", method: method)
  }

}
