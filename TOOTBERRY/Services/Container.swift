//
//  Container.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 10/21/20.
//

import UIKit

class Container {

    class func setRootViewController(_ viewController: UIViewController) {
        AppManager.shared.window?.rootViewController = viewController
        AppManager.shared.window?.makeKeyAndVisible()
    }
    
//    class func setHomeViewRoot() {
//        let tabBar = Container.getHomeTabBarController()
//        setRootViewController(tabBar)
//    }
  
    class func embedVCInNavController(_ viewController: UIViewController) -> UIViewController {
        let nav = AppNavigationController(rootViewController: viewController)
        return nav
    }

    class func getSplashScreen() -> SplashViewController {
        guard let splashVC = SplashRouter.createModule() as? SplashViewController else {
            return SplashViewController()
        }
        splashVC.editExtendedView()
        return splashVC
    }

}

private extension UIViewController {
    func editExtendedView( ) {
        self.edgesForExtendedLayout = [.top]
        self.extendedLayoutIncludesOpaqueBars = true

    }
}
