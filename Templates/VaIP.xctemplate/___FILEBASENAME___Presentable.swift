//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_moduleName___Presentable: AnyObject {
    func startProcessing()
    func finishProcessing()

    func handleError(_ error: ___VARIABLE_moduleName___Error)
    func handleUndefinedError(_ error: Error)
}

// Define DomainModel(s) to work with presenter.

enum ___VARIABLE_moduleName___Error: Error {}