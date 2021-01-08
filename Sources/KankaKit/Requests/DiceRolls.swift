//
//  DiceRolls.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `DiceRoll` requests.
public enum DiceRolls {
  /**
  All Dice Rolls

You can get a list of all the dice rolls of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func dicerolls(campaignId: Int) -> Request<[DiceRoll]> {
    return Request<[DiceRoll]>(path: "/campaigns/\(campaignId)/dice_rolls")
  }

  /**
  DiceRoll

To get the details of a single diceroll, use the following endpoint.

- parameter id: The identifier of the diceroll to retrieve.
- parameter campaignId: The identifier of the campaign containing the `DiceRoll`.
- returns: An initialized `Request`.
*/
  public static func diceroll(id: Int, campaignId: Int) -> Request<DiceRoll> {
    return Request<DiceRoll>(path: "/campaigns/\(campaignId)/dice_rolls/\(id)")
  }

  public static func create(campaignId: Int, values: DiceRoll.Create) throws -> Request<DiceRoll> {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<DiceRoll>(path: "/campaigns/\(campaignId)/dice_rolls", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: DiceRoll.Update) throws
    -> Request<DiceRoll>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<DiceRoll>(path: "/campaigns/\(campaignId)/dice_rolls/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<DiceRoll> {
    let method = HTTPMethod.delete(.empty)
    return Request<DiceRoll>(path: "/campaigns/\(campaignId)/dice_rolls/\(id)", method: method)
  }

}
