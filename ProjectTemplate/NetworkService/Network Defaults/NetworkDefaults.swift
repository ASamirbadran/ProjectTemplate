//
//  NetworkDefaults.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 8/20/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation

struct NetworkDefaults {
    var baseUrl: String
    var apiKey: String
    static var `defaults` : NetworkDefaults {
        let instance = NetworkDefaults(baseUrl: "error", apiKey: "")
        return instance
    }
}
