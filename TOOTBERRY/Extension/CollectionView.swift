//
//  CollectionView.swift
//  TOOTBERRY
//
//  Created by Ahmed Samir on 9/5/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import UIKit

extension UICollectionViewFlowLayout {

    var collectionViewWidthWithoutInsets: CGFloat {
        //get {
        guard let collectionView = self.collectionView else { return 0 }
        let collectionViewSize = collectionView.bounds.size
        let widthWithoutInsets = collectionViewSize.width
            - self.sectionInset.left - self.sectionInset.right
            - collectionView.contentInset.left - collectionView.contentInset.right
        return widthWithoutInsets
        //}
    }

}
