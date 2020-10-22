//
//  SplashInteractor.swift
//  TOOTBERRY
//
//  Created Ahmed Samir on 10/21/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class SplashInteractor {

    private weak var presenter: SplashInteractorOutputProtocol?

    // MARK: - Custom Setter
    public func setPresenter (presenter: SplashInteractorOutputProtocol) {
        self.presenter = presenter
    }
}

extension SplashInteractor: SplashInteractorInputProtocol {

}
