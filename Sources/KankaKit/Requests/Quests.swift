//
//  Quests.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Quest` requests.
public enum Quests {
  /**
  All Quests

You can get a list of all the quests of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func quests(campaignId: Int) -> Request<[Quest]> {
    return Request<[Quest]>(path: "/campaigns/\(campaignId)/quests")
  }

  /**
  Quest

To get the details of a single quest, use the following endpoint.

- parameter id: The identifier of the quest to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Quest`.
- returns: An initialized `Request`.
*/
  public static func quest(id: Int, campaignId: Int) -> Request<Quest> {
    return Request<Quest>(path: "/campaigns/\(campaignId)/quests/\(id)")
  }

  public static func create(campaignId: Int, values: Quest.Create) throws -> Request<Quest> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Quest>(path: "/campaigns/\(campaignId)/quests", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Quest.Update) throws
    -> Request<Quest>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Quest>(path: "/campaigns/\(campaignId)/quests/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Quest> {
    let method = HTTPMethod.delete(.empty)
    return Request<Quest>(path: "/campaigns/\(campaignId)/quests/\(id)", method: method)
  }

}
