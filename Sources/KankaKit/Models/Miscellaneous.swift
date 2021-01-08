//
//  Miscellaneous.swift
//  KankaKit
//
//  Created by Paul Schifferer on 1/7/21.
//

import Foundation

public enum Color : String, Codable {
    case none
    case grey
    case red
    case blue
    case green
    case yellow
    case black
    case white
}


public enum Shape : String, Codable {
    case circle
    case square
}

public enum Size : String, Codable {
    case standard
    case small
    case large
}


//public enum Icon : String, Codable {
//    case pin
//    case entity
//    case other(String)
//}
