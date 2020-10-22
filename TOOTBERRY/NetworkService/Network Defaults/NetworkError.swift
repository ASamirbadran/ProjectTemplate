//
//  NetworkError.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 8/20/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

//{"message":"You don't have balance to proceed.","errors":{"target":"You don't have balance to proceed."}}
//{"message":"Forbidden","errors":{"target":"id"}}

import Foundation
import Moya

enum `Type`:String, Codable {
    case business
    case system
    case mapping
    case formValidation
}
struct NetworkError: Codable, Error, LocalizedError {

    //enum (busineess , system , mapping) will know from moya error by (type / status code)
    var code: Int?
    var message: String?
    var type: Type?
    var innerErrors: [[String: String]]?
    //    var userInfo: [String: Any] = [:]

    init () {

    }

    enum CodingKeys: String, CodingKey {

        case message = "message"
        case innerErrors = "errors"

    }

    init(message: String, innerErrors: [[String: String]]) {
        self.message = message
        self.innerErrors = innerErrors
        self.type = .business
        self.code = -1
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        if let dictError = try? values.decodeIfPresent([String: String].self, forKey: .innerErrors) {
            self.innerErrors = [dictError]
        } else if let arrayError = try? values.decodeIfPresent([String: [String]].self, forKey: .innerErrors) {
            let arrayMap = arrayError.map { (key, values) -> [[String: String]] in
                let map = values.map({ [key: $0] })
                return map
            }
            self.innerErrors = Array(arrayMap.joined())
        }
    }

    //    https://gist.github.com/sukov/d3834c0e7b72e4f7575f753b352f6ddd

    init(error: MoyaError) {
        if case let MoyaError.underlying(underlyingError, nil) = error,
            let nserror = underlyingError as? NSError {
            self.code = nserror.code
        } else {
            self.code = error.errorCode
        }

        self.message = error.errorDescription

        switch error {
        case .underlying(let error, _):
            self.type = .system
            print(error)
        //            userInfo["error"] = error
        default :
            self.type = .mapping
        }
    }

    var errorDescription: String? {
        switch code {
        case 422:
            return message
        default:
            return message
        }
    }
}

extension NetworkError {
    static let parseError: NetworkError = {
        var error = NetworkError()
        error.type = Type.mapping
        return error
    }()
}
