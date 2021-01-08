//
//  Client.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/22/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation

extension Decodable {

    static func decode(data : Data) throws -> Self {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(.kankaFormatter)
        return try decoder.decode(Self.self, from: data)
    }

}
