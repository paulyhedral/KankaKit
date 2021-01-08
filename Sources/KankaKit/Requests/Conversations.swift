//
//  Conversations.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/// `Conversation` requests.
public enum Conversations {
  /**
  All Conversations

You can get a list of all the conversations of a campaign by using the following endpoint.

- parameter campaignId: The identifier of the campaign.
- returns: An initialized `Request`.
  */
  public static func conversations(campaignId: Int) -> Request<[Conversation]> {
    return Request<[Conversation]>(path: "/campaigns/\(campaignId)/conversations")
  }

  /**
  Conversation

To get the details of a single conversation, use the following endpoint.

- parameter id: The identifier of the conversation to retrieve.
- parameter campaignId: The identifier of the campaign containing the `Conversation`.
- returns: An initialized `Request`.
*/
  public static func conversation(id: Int, campaignId: Int) -> Request<Conversation> {
    return Request<Conversation>(path: "/campaigns/\(campaignId)/conversations/\(id)")
  }

  public static func participants(id: Int, campaignId: Int) -> Request<[ConversationParticipant]> {
    return Request<[ConversationParticipant]>(
      path: "/campaigns/\(campaignId)/conversations/\(id)/conversation_participants")
  }
  public static func messages(id: Int, campaignId: Int) -> Request<[ConversationMessage]> {
    return Request<[ConversationMessage]>(
      path: "/campaigns/\(campaignId)/conversations/\(id)/conversation_messages")
  }

  public static func create(campaignId: Int, values: Conversation.Create) throws -> Request<
    Conversation
  > {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.post(.data(data))
    return Request<Conversation>(path: "/campaigns/\(campaignId)/conversations", method: method)
  }

  public static func update(id: Int, campaignId: Int, values: Conversation.Update) throws
    -> Request<Conversation>
  {
    let data = try JSONEncoder().encode(values)
    let method = HTTPMethod.put(.data(data))
    return Request<Conversation>(
      path: "/campaigns/\(campaignId)/conversations/\(id)", method: method)
  }

  public static func delete(id: Int, campaignId: Int) throws -> Request<Conversation> {
    let method = HTTPMethod.delete(.empty)
    return Request<Conversation>(
      path: "/campaigns/\(campaignId)/conversations/\(id)", method: method)
  }

}
