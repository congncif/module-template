//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import IDMCore

protocol ___VARIABLE_moduleName___Presentable: AnyObject, LoadingProtocol, ErrorHandlingProtocol {
    // Declare methods to be called by Interactor.
    func activate(with model: ___VARIABLE_moduleName___Model)
}

// Define DomainModel(s) to work with presenter.
struct ___VARIABLE_moduleName___Model {}