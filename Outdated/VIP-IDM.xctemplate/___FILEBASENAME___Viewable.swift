//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation
import IDMCore

protocol ___VARIABLE_moduleName___Viewable: AnyObject, LoadingProtocol, ErrorHandlingProtocol {
    // Declare methods to be called by Presenter.
    func activate(with viewModel: ___VARIABLE_moduleName___ViewModel)
}

// Define ViewModel(s) to work with view.
struct ___VARIABLE_moduleName___ViewModel {}
