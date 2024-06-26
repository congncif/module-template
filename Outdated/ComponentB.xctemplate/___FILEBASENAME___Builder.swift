//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation

final class ___VARIABLE_moduleName___Builder: ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?) -> ___VARIABLE_moduleName___Interface {
        let interactor = ___VARIABLE_moduleName___Interactor()
        interactor.delegate = delegate

        return ___VARIABLE_moduleName___Component(controller: interactor)
    }
}
