//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation

// MARK: - Quick Access

extension ActivatableBoard {
    func io___VARIABLE_moduleName___(_ identifier: BoardID) -> BoardActivation<___VARIABLE_moduleName___Input> {
        activation(identifier, with: ___VARIABLE_moduleName___Input.self)
    }
}

extension MotherboardType {
    func io___VARIABLE_moduleName___(_ identifier: BoardID) -> MainboardActivation<___VARIABLE_moduleName___Input> {
        activation(identifier, with: ___VARIABLE_moduleName___Input.self)
    }
}

extension FlowManageable {
    func io___VARIABLE_moduleName___Flow(_ identifier: BoardID) -> FlowHandler<___VARIABLE_moduleName___Output> {
        matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self)
    }
}
