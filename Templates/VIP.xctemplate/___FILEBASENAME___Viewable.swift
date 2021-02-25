//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_moduleName___Viewable: AnyObject {
    // Declare methods to be called by Presenter.
    func activate(with viewModel: ___VARIABLE_moduleName___ViewModel)

    func startLoadingView()
    func stopLoadingView()

    func showErrorAlert(title: String?, message: String, cancelTitle: String)
}

// Define ViewModel(s) to work with view.
struct ___VARIABLE_moduleName___ViewModel {}
