//
//  UiTableViewExtension.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 1/29/20.
//  Copyright © 2020 Ibtikar Technologies. All rights reserved.
//

import UIKit
@objc
protocol EmptyDelegate {

    @objc
    func reloadButtonTapped()
}

extension UITableView {

    func setEmptyView(title: String,
                      message: String,
                      image: UIImage,
                      buttonTitle: String,
                      callback: EmptyDelegate,
                      topSpace: CGFloat) {
        let emptyView = EmptyView(
            frame: CGRect(
                x: self.center.x,
                y: self.center.y,
                width: self.bounds.size.width,
                height: self.bounds.size.height)
        )
        emptyView.config(title: title,
                         message: message,
                         image: image,
                         buttonTitle: buttonTitle, topSpace: topSpace)
        emptyView.callback = callback.reloadButtonTapped

        self.backgroundView = emptyView
        self.separatorStyle = .none

    }
    func restore() {
        self.backgroundView = nil
        self.separatorStyle = .none
    }
}
