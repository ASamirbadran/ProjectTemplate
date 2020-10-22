//
//  UIColor+app.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 10/21/20.
//
//swiftlint:disable object_literal

import Foundation
import UIKit

extension UIColor {

    class var primaryColor: UIColor {
        guard let color = UIColor(named: "PrimaryColor") else {
            return UIColor()
        }
        return color
    }

    class var secandryColor: UIColor {
        guard let color = UIColor(named: "SecandryColor") else {
            return UIColor()
        }
        return color

    }

    class var backgroundColor: UIColor {
        guard let color = UIColor(named: "BackgroundColor") else {
            return UIColor()
        }
        return color
    }

    class var cardBackgroundColor: UIColor {
        return self.white
    }

    class var shadowColor: UIColor {
        guard let color = UIColor(named: "ShadowColor") else {
            return UIColor()
        }
        return color
    }
    class var textSubColor: UIColor {
        guard let color = UIColor(named: "TextSubColor") else {
            return UIColor()
        }
        return color
    }

    class var viewTitleColor: UIColor {
        guard let color = UIColor(named: "ViewTitleColor") else {
            return UIColor()
        }
        return color
    }

    class var tabBarbackgroundColor: UIColor {
        return UIColor.white
    }

    class var tabBarUnselectedColor: UIColor {
        return UIColor.ashGrey
    }

    class var tabBarSelectedColor: UIColor {
        return UIColor.richElectricBlue
    }

    class var buttonColor: UIColor {
        guard let color = UIColor(named: "ButtonColor") else {
            return UIColor()
        }
        return color
    }
}

extension UIColor {

    class var lightbluewhite: UIColor {
        return UIColor(red: 253 / 255.0, green: 254 / 255.0, blue: 255 / 255.0, alpha: 1)
    }
    class var dimGray: UIColor {
        return UIColor(red: 101.0 / 255.0, green: 109.0 / 255.0, blue: 121.0 / 255.0, alpha: 1.0)
    }

    class var prussianBlue: UIColor {
        return UIColor(red: 30.0 / 255.0, green: 46.0 / 255.0, blue: 87.0 / 255.0, alpha: 1.0)
    }

    class var slateGray: UIColor {
        return UIColor(red: 117.0 / 255.0, green: 130.0 / 255.0, blue: 145.0 / 255.0, alpha: 1.0)
    }

    class var saintPatrickBlue: UIColor {
        return UIColor(red: 38.0 / 255.0, green: 60.0 / 255.0, blue: 116.0 / 255.0, alpha: 1.0)
    }

    class var celestialBlue: UIColor {
        return UIColor(red: 69.0 / 255.0, green: 157.0 / 255.0, blue: 201.0 / 255.0, alpha: 1.0)
    }

    class var paleAqua: UIColor {
        return UIColor(red: 202.0 / 255.0, green: 224.0 / 255.0, blue: 239.0 / 255.0, alpha: 1.0)
    }

    class var lavenderGray: UIColor {
        return UIColor(red: 199.0 / 255.0, green: 199.0 / 255.0, blue: 199.0 / 255.0, alpha: 1.0)
    }

    class var smalt: UIColor {
        return UIColor(red: 0.0 / 255.0, green: 47.0 / 255.0, blue: 135.0 / 255.0, alpha: 1.0)
    }

    class var cadetGrey: UIColor {
        return UIColor(red: 136.0 / 255.0, green: 160.0 / 255.0, blue: 181.0 / 255.0, alpha: 1.0)
    }

    class var richElectricBlue: UIColor {
        return UIColor(red: 15.0 / 255.0, green: 154.0 / 255.0, blue: 225.0 / 255.0, alpha: 1.0)
    }

    class var unitedNationsBlue: UIColor {
        return UIColor(red: 85.0 / 255.0, green: 150.0 / 255.0, blue: 227.0 / 255.0, alpha: 1.0)
    }

    class var charcoal: UIColor {
        return UIColor(red: 66.0 / 255.0, green: 67.0 / 255.0, blue: 106.0 / 255.0, alpha: 1.0)
    }

    class var charcoal1: UIColor {
        return UIColor(red: 34.0 / 255.0, green: 47.0 / 255.0, blue: 85.0 / 255.0, alpha: 1.0)
    }

    class var darkMidnightBlue: UIColor {
        return UIColor(red: 3.0 / 255.0, green: 42.0 / 255.0, blue: 115.0 / 255.0, alpha: 1.0)
    }

    class var trolleyGrey: UIColor {
        return UIColor(red: 124.0 / 255.0, green: 124.0 / 255.0, blue: 124.0 / 255.0, alpha: 1.0)
    }

    class var darkSlateBlue: UIColor {
        return UIColor(red: 58.0 / 255.0, green: 76.0 / 255.0, blue: 130.0 / 255.0, alpha: 1.0)
    }

    class var uclaBlue: UIColor {
        return UIColor(red: 77.0 / 255.0, green: 100.0 / 255.0, blue: 139.0 / 255.0, alpha: 1.0)
    }

    class var black: UIColor {
        return UIColor(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
    }

    class var black1: UIColor {
        return UIColor(red: 3.0 / 255.0, green: 3.0 / 255.0, blue: 3.0 / 255.0, alpha: 1.0)
    }

    class var cerisePink: UIColor {
        return UIColor(red: 232.0 / 255.0, green: 56.0 / 255.0, blue: 149.0 / 255.0, alpha: 1.0)
    }

    class var ashGrey: UIColor {
        return UIColor(red: 171.0 / 255.0, green: 180.0 / 255.0, blue: 191.0 / 255.0, alpha: 1.0)
    }

    class var outerSpace: UIColor {
        return UIColor(red: 74.0 / 255.0, green: 74.0 / 255.0, blue: 74.0 / 255.0, alpha: 1.0)
    }

    class var gainsBoro: UIColor {
        return UIColor(red: 215.0 / 255.0, green: 222.0 / 255.0, blue: 227.0 / 255.0, alpha: 1.0)
    }

    class var munsell: UIColor {
        return UIColor(red: 241.0 / 255.0, green: 241.0 / 255.0, blue: 241.0 / 255.0, alpha: 1.0)
    }

}
