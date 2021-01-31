//
//  UIViewExtension.swift
//  ProjectTemplate
//
//  Created by omnia on 8/26/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import UIKit

extension UIView {

    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(cgColor: layer.borderColor ?? UIColor.red.cgColor)
        }
        set {
            layer.borderWidth = 1
            layer.borderColor = newValue.cgColor
        }
    }

    @IBInspectable var cornurRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = true
        }
    }

    func loadViewFromNib(nibaFileName: String) -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibaFileName, bundle: bundle)

        guard let view = nib.instantiate(withOwner: self, options: nil)[0] as? UIView else {
            fatalError("failed while casting")
        }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        return view

    }

    func rotate(_ toValue: CGFloat, duration: CFTimeInterval = 0.4) {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.toValue = toValue
        animation.duration = duration
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.layer.add(animation, forKey: nil)
    }

    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }

}
