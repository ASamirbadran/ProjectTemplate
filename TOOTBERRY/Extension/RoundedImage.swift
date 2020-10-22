import UIKit

extension UIImageView {
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }

    func setBgWithAnimation(color: UIColor) {
        UIView.animate(withDuration: 1.0, animations: {
            self.backgroundColor = color
        })
    }
}
