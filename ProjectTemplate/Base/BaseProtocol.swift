//
//  BaseProtocol
//  ProjectTemplate
//
//  Created by Ahmed Samir on 7/16/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation

@objc
protocol PresenterLifeCycleProtocol {

    @objc
    optional func loadView()

    @objc
    optional func viewDidLoad()

    @objc
    optional func viewWillAppear()

    @objc
    optional func viewDidAppear()

    @objc
    optional func didReceiveMemoryWarning()

    @objc
    optional func viewWillDisappear()

    @objc
    optional func viewDidDisappear()
}

protocol BasePresenterProtocol: class, PresenterLifeCycleProtocol {

}
