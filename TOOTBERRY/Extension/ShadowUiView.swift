//
//  ShadowUiView.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 10/21/20.
//

import UIKit
extension UIView {
    
    func genericShadow() {
        self.layer.shadowColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.2
        self.layer.cornerRadius = 10
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 2.0
        self.layer.borderWidth = 0
    }
}
