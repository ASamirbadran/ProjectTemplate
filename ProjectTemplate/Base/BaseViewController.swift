//
//  BaseViewController.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 7/16/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import UIKit
import SwiftMessages

@objc
protocol NoInternetDelegate {

    @objc
    func retryButtonTapped()
}

class BaseViewController: UIViewController, NoInternetDelegate {

    // MARK: - Public Variables

    // MARK: - Private Variables

    var noInternetView: NoInternetView?
    // MARK: - Computed Variables

    // MARK: - IBOutlets

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupNavigationBar(title: "Base")
    }
    /// use this if you add a ViewControllerScene to the Nib not a View
    static func loadViewControllerFromXib<Controller: BaseViewController>() -> Controller {
        let nib = UINib(nibName: String(describing: self), bundle: Bundle.main)
        guard let controller = nib.instantiate(withOwner: nil, options: nil).first as? Controller
        else {
            fatalError("failed to parse top level object in nib to \(String(describing: Controller.self))")
        }
        return controller
    }
    func setupNavigationBar(title: String, prefersLargeTitles: Bool = true) {
        self.navigationItem.title = title
        let navBar = self.navigationController?.navigationBar
        navBar?.prefersLargeTitles = prefersLargeTitles
        navBar?.backgroundColor = UIColor.backgroundColor
        self.navigationController?.navigationItem.largeTitleDisplayMode = .automatic
        navBar?.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.primaryColor]
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.primaryColor]

    }

    func addEmptyViewForInternet(title: String,
                                 message: String,
                                 image: UIImage,
                                 buttonTitle: String,
                                 callback: NoInternetDelegate) {
        if let emptyView = self.noInternetView {
            emptyView.removeFromSuperview()
            self.noInternetView = nil
        }
        self.noInternetView = NoInternetView(
            frame: CGRect(
                x: self.view.center.x,
                y: self.view.center.y,
                width: self.view.bounds.size.width,
                height: self.view.bounds.size.height)
        )
        noInternetView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        noInternetView?.frame = self.view.bounds
        noInternetView?.config(title: title, message: message, image: image, buttonTitle: buttonTitle)
        noInternetView?.callback = callback.retryButtonTapped
        noInternetView?.backgroundColor = UIColor.backgroundColor
        if let view = noInternetView {
            self.view.addSubview(view)
        }

    }

    func removeNoInternetView() {
        DispatchQueue.main.async {
            self.noInternetView?.removeFromSuperview() // for removing internet  conection view
        }
    }

    //notes App Validation Error Code is 010
    func showMessage(title: String,
                     body: String,
                     isError: Bool,
                     isNetworkErrorToaster: Bool,
                     code: Int) {

        if (isError) {
            var errorCategory = ""
            if (999...1017 ~= abs(code)) {
                errorCategory = "Network Error"
                if (isNetworkErrorToaster) {
                    let warning = MessageView.viewFromNib(layout: .cardView)
                    if(isError) {
                        warning.configureTheme(.error)
                    } else {
                        warning.configureTheme(.success)
                    }
                    warning.configureDropShadow()

                    warning.configureContent(title: title, body: body)
                    warning.button?.isHidden = true
                    var warningConfig = SwiftMessages.defaultConfig
                    warningConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
                    SwiftMessages.show(config: warningConfig, view: warning)
                } else {
                    //                    addEmptyViewForInternet(
                    //                        title: "",
                    //                        message: L10n.Empty.nointernet,
                    //                        image: Asset.emptyNoInternet.image,
                    //                        buttonTitle: L10n.Empty.nointernetButton,
                    //                        callback: self)
                }
            } else {
                errorCategory = "Api Error"
                let warning = MessageView.viewFromNib(layout: .cardView)
                if(isError) {
                    warning.configureTheme(.error)
                } else {
                    warning.configureTheme(.success)
                }
                warning.configureDropShadow()

                warning.configureContent(title: title, body: body)
                warning.button?.isHidden = true
                var warningConfig = SwiftMessages.defaultConfig
                warningConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
                SwiftMessages.show(config: warningConfig, view: warning)
            }

        } else {
            let success = MessageView.viewFromNib(layout: .cardView)
            success.configureTheme(.success)
            success.configureDropShadow()
            success.configureContent(title: title, body: body)
            success.button?.isHidden = true
            var successConfig = SwiftMessages.defaultConfig
            successConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
            SwiftMessages.show(config: successConfig, view: success)
        }
    }
    func retryButtonTapped() {
        #if DEBUG
        fatalError("sub viewcontroller must override this functiion without call super")
        #endif

    }
}

extension BaseViewController: LoaderProtocol, ViewIndicatorProtocal, Toastermessages {

    func showToastMessage(title: String, body: String, isError: Bool, isNetworkErrorToaster: Bool, statusCode: Int) {

        showMessage(title: title,
                    body: body,
                    isError: isError,
                    isNetworkErrorToaster: isNetworkErrorToaster,
                    code: statusCode)
    }

    func showLoadingIndicator() {
        if(Internet.isConnectedToNetwork()) {
            Loader.show(onView: self.view, type: LoaderType.native)
        }

    }

    func hideLoadingIndicator() {
        Loader.hide()

    }

    func show(view: UIView, type: LoaderType) {
        if(Internet.isConnectedToNetwork()) {
            Loader.show(onView: view, type: type)
        }
    }

    func hide() {
        Loader.hide()
    }

}
