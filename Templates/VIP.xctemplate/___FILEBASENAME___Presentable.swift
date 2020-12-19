//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_moduleName___Presentable: AnyObject {
    // Declare methods to be called by Interactor.
    func active(with model: ___VARIABLE_moduleName___Model)

    func startProcessing()
    func finishProcessing()

    func handleError(_ error: ___VARIABLE_moduleName___Error)
    func handleUndefinedError(_ error: Error)
}

// Define DomainModel(s) to work with presenter.
struct ___VARIABLE_moduleName___Model {}

enum ___VARIABLE_moduleName___Error: Error {}