//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
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