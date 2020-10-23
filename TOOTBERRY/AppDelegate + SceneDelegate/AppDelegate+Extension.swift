//
//  AppDelegate+Extension.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 10/21/20.
//

import UIKit
extension AppDelegate {

    func initNetwork() {
        let defaults = NetworkDefaults(baseUrl: Environment.rootURL, apiKey: Environment.apiKey)
        NetworkManager.shared = NetworkManager(config: defaults)
    }
    
    func disableMultiTouch() {
        UIView.appearance().isExclusiveTouch = true
    }
    
    func disableDarkMode() {
        if #available(iOS 13.0, *) {
            window?.overrideUserInterfaceStyle = .light
        }
    }
}
