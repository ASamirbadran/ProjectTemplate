//
//  BaseViewProtocal
//  TOOTBERRY
//
//  Created by Ahmed Samir on 7/16/19.
//  Copyright © 2019 Ibtikar Technologies. All rights reserved.
//

import Foundation

@objc
protocol BaseViewProtocal: ViewIndicatorProtocal, ViewFetchable, Toastermessages {

}

@objc
protocol ViewIndicatorProtocal: class {

    // MARK: - Load Indicator
    @objc
    optional func showLoadingIndicator()
    @objc
    optional func hideLoadingIndicator()
}

@objc
protocol ViewFetchable: class {

    // MARK: - Load Data
    @objc
    optional func fetchDataSuccess()
    @objc
    optional func fetchDataFailed(with error: Error?)

}

@objc
protocol Toastermessages: class {

    // MARK: - Load Data
    @objc
    optional func showToastMessage(title: String,
                                   body: String,
                                   isError: Bool,
                                   isNetworkErrorToaster: Bool,
                                   statusCode: Int)
}
