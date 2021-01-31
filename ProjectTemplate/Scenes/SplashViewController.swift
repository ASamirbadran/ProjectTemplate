//
//  SplashViewController.swift
//  ProjectTemplate
//
//  Created Ahmed Samir on 10/21/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

class SplashViewController: BaseViewController {

    // MARK: - Public Variables
    private var presenter: SplashPresenterProtocol?

    // MARK: - Private Variables

    // MARK: - Computed Variables

    // MARK: - IBOutlets

    // MARK: - Custom Setter
    public func setPresenter (presenter: SplashPresenterProtocol) {
        self.presenter = presenter
    }
}

// MARK: - View controller lifecycle methods
extension SplashViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad?()
    }
}

// MARK: - IBActions
extension SplashViewController {

}

// MARK: - Selectors
extension SplashViewController {

}

// MARK: - Private
extension SplashViewController {

}

// MARK: - Protocal
extension SplashViewController: SplashViewProtocol {

}
