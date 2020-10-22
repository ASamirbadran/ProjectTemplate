//
//  UITextFieldExtension.swift
//  TOOTBERRY
//
//  Created by omnia on 8/26/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import UIKit

extension UITextField {

    func addPaddingToTextFiled() {

        let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: 14))
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: 14))

        self.rightView = rightPaddingView
        self.rightViewMode = .always

        self.leftView = leftPaddingView
        self.leftViewMode = .always
    }
}
