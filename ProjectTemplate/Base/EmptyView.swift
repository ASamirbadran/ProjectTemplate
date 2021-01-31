//
//  EmptyView.swift
//  ProjectTemplate
//
//  Created by Ahmed Samir on 2/2/20.
//  Copyright © 2020 Ibtikar Technologies. All rights reserved.
//

import UIKit

class EmptyView: UIView {

    var callback: (() -> Void)?
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let messageLabel = UILabel()
    let button = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        //addCustomView(topSpace: -20)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")

    }

    func addCustomView(topSpace: CGFloat) {

        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false

        titleLabel.textColor = UIColor.primaryColor
        titleLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 14)

        messageLabel.textColor = UIColor.primaryColor
        messageLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 14)

        button.backgroundColor = UIColor.buttonColor
        button.setTitleColor(UIColor.white, for: .normal)
        button.cornurRadius = 8
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 17)

        self.addSubview(imageView)
        self.addSubview(titleLabel)
        self.addSubview(messageLabel)
        self.addSubview(button)

        let yConstraint = NSLayoutConstraint(
            item: imageView,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: self,
            attribute: .centerY,
            multiplier: 1,
            constant: topSpace)
        NSLayoutConstraint.activate([yConstraint])

        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true

        titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true

        messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        messageLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        messageLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true

        button.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 35).isActive = true
        button.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        button.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        let heightContraints = NSLayoutConstraint(
            item: button,
            attribute: NSLayoutConstraint.Attribute.height,
            relatedBy: NSLayoutConstraint.Relation.equal,
            toItem: nil,
            attribute: NSLayoutConstraint.Attribute.notAnAttribute,
            multiplier: 1,
            constant: 50)
        NSLayoutConstraint.activate([heightContraints])

        titleLabel.numberOfLines = 1
        titleLabel.textAlignment = .center

        messageLabel.numberOfLines = 1
        messageLabel.textAlignment = .center

        button.addTarget(self, action: #selector(reloadButtonTapped), for: .touchUpInside)
    }

    @objc
    func reloadButtonTapped() {
        if let callback = self.callback {
            callback()
        }
    }
    func config(title: String, message: String, image: UIImage, buttonTitle: String, topSpace: CGFloat) {
        addCustomView(topSpace: topSpace)
        imageView.image = image
        titleLabel.text = title
        messageLabel.text = message
        if(buttonTitle.isEmpty) {
            button.isHidden = true
        } else {
            button.setTitle(buttonTitle, for: .normal)
        }
    }
}
