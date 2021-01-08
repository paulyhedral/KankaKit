//
//  Calendar.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

public class Calendar: Codable {
  public let id: Int
  public let name: String
  public let entry: String
  public let image: URL
  public let imageFull: URL
  public let imageThumb: URL
  public let hasCustomImage: Bool
  public let isPrivate: Bool
  public let entityId: Int
  public let tags: [Int]
  public let createdAt: Date
  public let createdBy: Int
  public let updatedAt: Date
  public let updatedBy: Int
  public let type: String?
  public let date: String
  public let parameters: String?
  public let months: [CalendarMonth]
  public let startOffset: Int
  public let weekdays: [String]
  public let years: [String: String]
  public let seasons: [CalendarSeason]
  public let moons: [CalendarMoon]
  public let suffix: String
  public let hasLeapYear: Bool
  public let leapYearAmount: Int
  public let leapYearMonth: Int
  public let leapYearOffset: Int
  public let leapYearStart: Int

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case entry
    case image
    case imageFull = "image_full"
    case imageThumb = "image_thumb"
    case hasCustomImage = "has_custom_image"
    case isPrivate = "is_private"
    case entityId = "entity_id"
    case tags
    case createdAt = "created_at"
    case createdBy = "created_by"
    case updatedAt = "updated_at"
    case updatedBy = "updated_by"
    case type
    case date
    case parameters
    case months
    case startOffset = "start_offset"
    case weekdays
    case years
    case seasons
    case moons
    case suffix
    case hasLeapYear = "has_leap_year"
  }

  public struct Create: Codable {
    public let name : String
    public let type : String?
    public let parentId : Int?
    public let tags : [Int]?
    public let isPrivate : Bool?
    public let image : Data?
    public let imageURL : URL?

    private enum CodingKeys: String, CodingKey {
        case name
        case type
        case parentId = "note_id"
        case tags
        case isPrivate = "is_private"
        case image
        case imageURL = "image_url"
    }

  }

  public struct Update: Codable {
    public let name : String
    public let type : String?
    public let parentId : Int?
    public let tags : [Int]?
    public let isPrivate : Bool?
    public let image : Data?
    public let imageURL : URL?

    private enum CodingKeys: String, CodingKey {
        case name
        case type
        case parentId = "note_id"
        case tags
        case isPrivate = "is_private"
        case image
        case imageURL = "image_url"
    }

  }
}

public class CalendarMoon: Codable {
  public let name: String
  public let fullmoon: String
  public let offset: Int
  public let color: String

  private enum CodingKeys: String, CodingKey {
    case name
    case fullmoon
    case offset
    case color = "colour"
  }
}

public class CalendarSeason: Codable {
  public let name: String
  public let month: Int
  public let day: Int

  private enum CodingKeys: String, CodingKey {
    case name
    case month
    case day
  }
}

public class CalendarMonth: Codable {
  public let name: String
  public let length: Int
  public let type: CalendarMonthType

  private enum CodingKeys: String, CodingKey {
    case name
    case length
    case type
  }
}

public enum CalendarMonthType: String, Codable {
  case standard
  case intercalary

  private enum CodingKeys: String, CodingKey {
    case standard
    case intercalary
  }
}
