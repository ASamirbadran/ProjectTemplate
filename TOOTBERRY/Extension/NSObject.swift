//
//  NSObject.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 10/21/20.
//

import Foundation

extension NSObject {

    var className: String {
        return String(describing: type(of: self))
    }

    class var className: String {
        return String(describing: self)
    }
}
