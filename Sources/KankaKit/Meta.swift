//
//  Meta.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/9/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

/**
 Value object storing meta-information about a request's response.
 */
public struct Meta : Codable {
    /**
     The current page of the request, for pagination.
     This value *may* be greater than the `lastPage` value.
     */
    public let currentPage : Int
    /**
     The ordinal position of the first object in the current request's response.
     This value can be `nil` if the response contains no data.
     */
    public let from : Int?
    /**
     The ordinal number of the last page that can be requested for this request.
     */
    public let lastPage : Int
    /**
     The path for this request, without pagination information.
     */
    public let path : URL
    /**
     The number of objects that can be returned in a page.
     */
    public let perPage : Int
    /**
     The ordinal position of the last object in the current request's response.
     This value can be `nil` if the response contains no data.
     */
    public let to : Int?
    /**
     The actual number of possible objects that can be retrieved for this request type.
     */
    public let total : Int
}
