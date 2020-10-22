//
//  NumbersExtention.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 11/19/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//
import Foundation
extension Double {
    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
