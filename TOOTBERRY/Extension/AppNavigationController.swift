//
//  AppNavigationController.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 7/16/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import UIKit

class AppNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeBackBarButtonImage()
        self.navigationBar.prefersLargeTitles = false
        self.navigationBar.tintColor =  #colorLiteral(red: 0.2963504195, green: 0.3806865215, blue: 0.5296425819, alpha: 1) //UIColor.primaryColor
        self.view.backgroundColor = UIColor.backgroundColor
        self.navigationBar.isTranslucent = false
        navigationBar.clearNavigationBar(backgroundColor: UIColor.backgroundColor)
        self.navigationItem.leftItemsSupplementBackButton = true;
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:
            UIColor.primaryColor]

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    func shouldHideLogo(enabled _: Bool) {
        navigationController?.navigationBar.barTintColor = UIColor.white
    }

}
