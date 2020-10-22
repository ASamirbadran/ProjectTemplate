//
//  SplashRouter.swift
//  TOOTBERRY
//
//  Created Ahmed Samir on 10/21/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

class SplashRouter {

    private weak var viewController: UIViewController?

    private init () {}

    private init(with viewController: UIViewController) {
        self.viewController = viewController
    }
    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = SplashViewController(nibName: nil, bundle: nil)
        let interactor = SplashInteractor()
        let router = SplashRouter(with: view)
        let presenter = SplashPresenter(interface: view, interactor: interactor, router: router)

        view.setPresenter(presenter: presenter)
        interactor.setPresenter(presenter: presenter)

        return view
    }
}

extension SplashRouter: SplashWireframeProtocol {

}
