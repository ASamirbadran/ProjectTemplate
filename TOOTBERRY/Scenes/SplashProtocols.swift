//
//  SplashProtocols.swift
//  TOOTBERRY
//
//  Created Ahmed Samir on 10/21/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

// MARK: - ViewController -> Presenter

protocol SplashPresenterProtocol: BasePresenterProtocol {

    //    var interactor: SplashInteractorInputProtocol? { get set }

    /* ViewController -> Presenter */
}

protocol SplashInteractorInputProtocol: class {

    //    var presenter: SplashInteractorOutputProtocol? { get set }

    /* Presenter -> Interactor */
}

// MARK: - Interactor -> Presenter

protocol SplashInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

// MARK: - Presenter -> ViewController

protocol SplashViewProtocol: BaseViewProtocal {

    //    var presenter: SplashPresenterProtocol? { get set }

    /* Presenter -> ViewController */
}

// MARK: - Router

protocol SplashWireframeProtocol: class {

}
