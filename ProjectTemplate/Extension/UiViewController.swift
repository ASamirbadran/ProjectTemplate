//
//  UiViewController.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 9/15/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func addVC(vc: UIViewController) {
        self.view.addSubview(vc.view)
        self.addChild(vc)
        vc.view.frame = self.view.bounds
        vc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

    }
    func setViewVisibility(view: UIView, hidden: Bool) {
        UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
            view.isHidden = true
        })
    }
}
