//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

/// Use for interacting with data before sending messages to outside
protocol ___VARIABLE_moduleName___Interactable {
    func didBecomeActive()
}

final class ___VARIABLE_moduleName___Controller {
    weak var delegate: ___VARIABLE_moduleName___ControlDelegate?
    weak var view: ___VARIABLE_moduleName___View!
}

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Interactable {
    func didBecomeActive() {
        delegate?.didBecomeActive()
    }
}

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Controllable {}
