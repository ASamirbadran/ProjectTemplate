//
//  NetworkManager.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 8/20/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation
import Moya

/// Closure to be executed when a request has completed.
typealias StatusCode = Int
//typealias NetworkResult<T: Codable> =  Swift.Result<T, NetworkError>
//typealias Completion<T: Codable> = (_ result:NetworkResult<T>, _ statusCode:StatusCode) -> Void

class NetworkManager {

    static var shared: NetworkManager!

    var networkConfig: NetworkDefaults?

    let provider: MoyaProvider<MultiTarget>

    init(isStubing: Bool) {
        if isStubing == true {
            provider = MoyaProvider<MultiTarget>(stubClosure: MoyaProvider.immediatelyStub)
        } else {
            fatalError("init testing network in production")
        }
    }

    init(config: NetworkDefaults = NetworkDefaults.defaults) {
        self.networkConfig = config

        let authTocken = AccessTokenPlugin(tokenClosure: { () -> String in
            //auth tocken,
            print(PersistanceManager.valueForKey(PersistenceKeyBase.userAuthKey) ?? "")
            return PersistanceManager.valueForKey(PersistenceKeyBase.userAuthKey) ?? ""

        })

        let headerPlugin = StaticHeaderPlugin(
            headers: [
                "Content-Type": "application/json",
                "x-api-key": config.apiKey ,
                "Accept": "application/json",
                "accept-language": LanguageManager.getDeviceLocal()
            ])

        provider = MoyaProvider<MultiTarget>(//manager: ,
            plugins: [headerPlugin, authTocken, NetworkLoggerPlugin(verbose: true)])
    }

}

extension MultiTarget: AccessTokenAuthorizable {
    public var authorizationType: AuthorizationType {
        // here you will have to check whether the `target` is also conforming to `AccessTokenAuthorizable` or not...
        if target is AccessTokenAuthorizable {
            guard let authTarget = target as? AccessTokenAuthorizable else {
                return .none
            }
            return authTarget.authorizationType
        }
        return .none
    }
}
