//
//  AppDefaultButton.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 9/15/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class AppDefaultButton: UIButton {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()

    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()

    }

    func setUpButton() {
        self.layer.cornerRadius = 8
        self.backgroundColor = UIColor.buttonColor
        self.setTitleColor(UIColor.white, for: .normal)

    }

}
