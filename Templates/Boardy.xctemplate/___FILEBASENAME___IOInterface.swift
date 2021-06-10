//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation

typealias ___VARIABLE_moduleName___Input = Any?

enum ___VARIABLE_moduleName___Output {}

enum ___VARIABLE_moduleName___Command {}

// MARK: - Quick Access

struct ___VARIABLE_moduleName___Destination {
    let activation: BoardActivation<___VARIABLE_moduleName___Input>
    let interaction: BoardInteraction<___VARIABLE_moduleName___Command>
}

extension ActivatableBoard {
    func io___VARIABLE_moduleName___(_ identifier: BoardID) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Input.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self)
        )
    }
}

extension MotherboardType {
    func io___VARIABLE_moduleName___(_ identifier: BoardID) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Input.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self)
        )
    }
}

extension FlowManageable {
    func io___VARIABLE_moduleName___Flow(_ identifier: BoardID) -> FlowHandler<___VARIABLE_moduleName___Output> {
        matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self)
    }
}
