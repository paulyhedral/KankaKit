//
//  Client.swift
//  KankaKit
//
//  Created by Paul Schifferer on 4/22/17.
//  Copyright © 2021 KankaKit. All rights reserved.
//

import Foundation


extension URLRequest {

    /**
     Convenience initializer to create a `URLRequest` with a request body and
     access token.

     - parameters:
        - url: The URL endpoint for the request.
        - request: The `Request` object containing the model.
        - accessToken: An optional access token for the request.
     */
    init<A>(url : URL, request : Request<A>, accessToken : String?) {
        self.init(url: url, timeoutInterval: 30)

        httpMethod = request.method.name
        httpBody = request.method.httpBody

        setValue(accessToken.map { "Bearer \($0)" }, forHTTPHeaderField: "Authorization")
        setValue(request.method.contentType, forHTTPHeaderField: "Content-Type")
    }

}
