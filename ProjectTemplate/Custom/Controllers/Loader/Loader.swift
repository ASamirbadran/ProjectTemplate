//
//  Loader.swift
//  CustomLoaderDemo
//
//  Created by omnia on 8/22/19.
//  Copyright © 2019 omnia. All rights reserved.
//

import UIKit

class Loader: NSObject {

    static var sharedViewSpinner: UIView?
    class func show (onView: UIView, type: LoaderType) {
        hide()
        var spinnerView = UIView(frame: onView.bounds)
        if let window = AppManager.shared.window {
            spinnerView = UIView(frame: window.frame)
        }
        spinnerView.backgroundColor = UIColor.clear

        let activityIndicator = UIActivityIndicatorView(style: .large)
        let viewBackgroundLoading: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))

        activityIndicator.color = UIColor.white
        activityIndicator.startAnimating()
        activityIndicator.center = viewBackgroundLoading.center

        viewBackgroundLoading.addSubview(activityIndicator)
        viewBackgroundLoading.center = spinnerView.center
        viewBackgroundLoading.backgroundColor = UIColor.darkGray
        viewBackgroundLoading.alpha = 0.5
        viewBackgroundLoading.clipsToBounds = true
        viewBackgroundLoading.layer.cornerRadius = 15

        spinnerView.addSubview(viewBackgroundLoading)

        if let window = AppManager.shared.window {
            window.addSubview(spinnerView)
        }
        //onView.addSubview(spinnerView)

        sharedViewSpinner = spinnerView
    }

    class func hide() {
        sharedViewSpinner?.removeFromSuperview()
        sharedViewSpinner = nil
    }
}
