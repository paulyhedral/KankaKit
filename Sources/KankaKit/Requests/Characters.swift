//
//  Characters.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Character` requests.
public enum Characters {
  /**
  All Characters

You can get a list of all the characters of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func characters(campaignId: Int) -> Request<[Character]> {
    return Request<[Character]>(path: "/campaigns/\(campaignId)/characters")
  }

  /**
  Character

To get the details of a single character, use the following endpoint.

- parameter id: The identifier of the character to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Character`.
- returns: An initialized `Request`.
*/
  public static func character(id: Int, campaignId: Int) -> Request<Character> {
    return Request<Character>(path: "/campaigns/\(campaignId)/characters/\(id)")
  }

  public static func create(campaignId: Int, values: Character.Create) throws -> Request<Character>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Character>(path: "/campaigns/\(campaignId)/characters", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Character.Update) throws
    -> Request<Character>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Character>(path: "/campaigns/\(campaignId)/characters/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Character> {
    let method = HTTPMethod.delete(.empty)
    return Request<Character>(path: "/campaigns/\(campaignId)/characters/\(id)", method: method)
  }

}
