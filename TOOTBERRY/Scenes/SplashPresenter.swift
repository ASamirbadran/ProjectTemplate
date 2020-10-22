//
//  SplashPresenter.swift
//  TOOTBERRY
//
//  Created Ahmed Samir on 10/21/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class SplashPresenter: NSObject {

    private weak var view: SplashViewProtocol?
    private var interactor: SplashInteractorInputProtocol?
    private var router: SplashWireframeProtocol?

    init(interface: SplashViewProtocol,
         interactor: SplashInteractorInputProtocol?,
         router: SplashWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
extension SplashPresenter: SplashPresenterProtocol {

}
extension SplashPresenter: SplashInteractorOutputProtocol {

}
