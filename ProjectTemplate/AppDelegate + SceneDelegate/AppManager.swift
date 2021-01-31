//
//  AppManager.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 10/21/20.
//

import UIKit

class AppManager {
    static var shared: AppManager = AppManager()
    var window: UIWindow?

    static func initWindow() {

        let window = UIWindow(frame: UIScreen.main.bounds)

        let vc = Container.getSplashScreen()
        window.rootViewController = vc
        window.backgroundColor = UIColor.backgroundColor
        window.makeKeyAndVisible()
        self.shared.window = window
    }

    @available(iOS 13.0, *)
    static func initWindow(windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        let vc = Container.getSplashScreen()
        window.rootViewController = vc
        window.backgroundColor = UIColor.backgroundColor
        window.makeKeyAndVisible()
        self.shared.window = window
    }

    class func setWindowRoot(_ viewController: UIViewController) {
        shared.window?.rootViewController = viewController
    }

}
