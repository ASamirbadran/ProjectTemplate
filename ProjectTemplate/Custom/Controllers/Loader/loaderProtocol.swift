//
//  loaderProtocol.swift
//  CustomLoaderDemo
//
//  Created by omnia on 8/22/19.
//  Copyright © 2019 omnia. All rights reserved.
//

import Foundation
import  UIKit

protocol LoaderProtocol {
    func show(view: UIView, type: LoaderType)
    func hide()
}

enum LoaderType {
    case custom, native
}
