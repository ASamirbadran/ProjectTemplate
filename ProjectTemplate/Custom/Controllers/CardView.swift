//
//  CardView.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 9/15/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CardView: UIView {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUp()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()

    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()

    }

    func setUp() {
        self.genericShadow()
    }

}
