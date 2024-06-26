//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation

protocol ___VARIABLE_moduleName___Viewable: AnyObject {
    func startLoadingView()
    func stopLoadingView()

    func showErrorAlert(title: String?, message: String, cancelTitle: String)
}

// Define ViewModel(s) to work with view.
struct ___VARIABLE_moduleName___ViewModel {}
