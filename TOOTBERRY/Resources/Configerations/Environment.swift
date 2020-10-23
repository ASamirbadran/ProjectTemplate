//
//  Environment.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 10/21/20.
//
//swiftlint:disable  nesting

import Foundation

public enum Environment {
    // MARK: - Keys
    enum Keys {
        enum Plist {
            static let rootURL = "BASE_URL"
            static let apiKey = "API_KEY"
        }
    }

    // MARK: - Plist
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()

    // MARK: - Plist values
    static let rootURL: String = {
        guard let rootURLstring = Environment.infoDictionary[Keys.Plist.rootURL] as? String else {
            fatalError("Root URL not set in plist for this environment")
        }
        let baseUrl = "https://\(rootURLstring)"
        guard let url = URL(string: baseUrl ) else {
            fatalError("Root URL is invalid")
        }
        return url.absoluteString
    }()

    static let apiKey: String = {
        guard let apiKey = Environment.infoDictionary[Keys.Plist.apiKey] as? String else {
            fatalError("API Key not set in plist for this environment")
        }
        return apiKey
    }()
    
}
