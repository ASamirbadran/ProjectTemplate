//
//  NavigationBar+Appearance.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 10/21/20.
//

import UIKit

extension UINavigationController {

    func changeBackBarButtonImage() {

        guard var backButtonBackgroundImage: UIImage = UIImage(named: Asset.icNavBack.name) else { return }

        // The background should be pinned to the left and not stretch.
        backButtonBackgroundImage = backButtonBackgroundImage
            .resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: -1, bottom: 0, right: 0))

        //        let barAppearance = UINavigationBar.appearance(whenContainedInInstancesOf:[UINavigationController.self])
        _ = UINavigationBar.appearance(whenContainedInInstancesOf: [AppNavigationController.self])

        self.navigationBar.backIndicatorImage = backButtonBackgroundImage
        self.navigationBar.backIndicatorTransitionMaskImage = backButtonBackgroundImage

        // Provide an empty backBarButton to hide the 'Back' text present by default in the back button.
        let backBarButtton = UIBarButtonItem(title: "  ", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backBarButtton

    }

}

extension UINavigationBar {

    func clearNavigationBar(backgroundColor: UIColor?) {
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
        self.barTintColor = backgroundColor
        self.isTranslucent = false
    }
}
extension UIApplicationDelegate {

    func changeBackBarButtonImage() {

        guard var backButtonBackgroundImage: UIImage = UIImage(named: Asset.icNavBack.name) else { return }

        // The background should be pinned to the left and not stretch.
        backButtonBackgroundImage = backButtonBackgroundImage
            .resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: -1, bottom: 0, right: 0))
        let barAppearance = UINavigationBar.appearance(whenContainedInInstancesOf: [UINavigationController.self])
        //        var barAppearance = UINavigationBar.appearance(whenContainedInInstancesOf:[AppNavigationController.self])

        barAppearance.backIndicatorImage = backButtonBackgroundImage
        barAppearance.backIndicatorTransitionMaskImage = backButtonBackgroundImage
    }
}

extension CAShapeLayer {
    func drawCircleAtLocation(location: CGPoint, withRadius radius: CGFloat, andColor color: UIColor, filled: Bool) {
        fillColor = filled ? color.cgColor : UIColor.white.cgColor
        strokeColor = color.cgColor
        let origin = CGPoint(x: location.x - radius, y: location.y - radius)
        path = UIBezierPath(ovalIn: CGRect(origin: origin, size: CGSize(width: radius * 2, height: radius * 2))).cgPath
    }
}

private var handle: UInt8 = 0;
extension UIBarButtonItem {

    private var badgeLayer: CAShapeLayer? {
        if let badge: AnyObject = objc_getAssociatedObject(self, &handle) as AnyObject? {
            return badge as? CAShapeLayer
        } else {
            return nil
        }
    }

    func addBadge(number: Int,
                  withOffset offset: CGPoint = CGPoint.zero,
                  andColor color: UIColor = UIColor.secandryColor,
                  andFilled filled: Bool = true) {
        guard let view = self.value(forKey: "view") as? UIView else { return }

        badgeLayer?.removeFromSuperlayer()

        var badgeWidth = 8
        var numberOffset = 4

        if number > 9 {
            badgeWidth = 12
            numberOffset = 6
        }

        // Initialize Badge
        let badge = CAShapeLayer()
        let radius = CGFloat(7)
        var location = CGPoint()

        if(LanguageManager.getDeviceLocal() == "ar") {
            location = CGPoint(x: (radius + offset.x), y: (radius + offset.y))
        } else {
            location = CGPoint(x: view.frame.width - (radius + offset.x), y: (radius + offset.y))
        }

        badge.drawCircleAtLocation(location: location, withRadius: radius, andColor: color, filled: filled)
        view.layer.addSublayer(badge)

        // Initialiaze Badge's label
        let label = CATextLayer()
        label.string = "\(number)"
        label.alignmentMode = CATextLayerAlignmentMode.center
        label.fontSize = 11
        label.frame = CGRect(
            origin: CGPoint(x: location.x - CGFloat(numberOffset), y: offset.y),
            size: CGSize(width: badgeWidth, height: 16))
        label.foregroundColor = filled ? UIColor.white.cgColor : color.cgColor
        label.backgroundColor = UIColor.clear.cgColor
        label.contentsScale = UIScreen.main.scale
        badge.addSublayer(label)

        // Save Badge as UIBarButtonItem property
        objc_setAssociatedObject(self, &handle, badge, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }

    func updateBadge(number: Int) {

        if let text = badgeLayer?.sublayers?.first(where: { $0 is CATextLayer })as? CATextLayer {
            text.string = "\(number)"
        }
    }

    func removeBadge() {
        badgeLayer?.removeFromSuperlayer()
    }

}

extension UINavigationItem {
    func clearBackBarButtonTitle() {
        // Provide an empty backBarButton to hide the 'Back' text present by
        // default in the back button.
        //
        // NOTE: You do not need to provide a target or action.  These are set
        //       by the navigation bar.
        // NOTE: Setting the title of this bar button item to ' ' (space) works
        //       around a bug in iOS 7.0.x where the background image would be
        //       horizontally compressed if the back button title is empty.

        let backBarButton: UIBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        self.backBarButtonItem = backBarButton

    }

}
