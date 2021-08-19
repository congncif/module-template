//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation

// MARK: - Namespace

extension BoardID {
    static let mod___VARIABLE_moduleName___: BoardID = "mod.___TARGETNAME___.___VARIABLE_moduleName___"
}

// MARK: - Interface

struct ___VARIABLE_moduleName___Destination {
    let activation: BoardActivation<___VARIABLE_moduleName___Input>
    let interaction: BoardInteraction<___VARIABLE_moduleName___Command>
}

extension ActivatableBoard {
    func io___VARIABLE_moduleName___(_ identifier: BoardID = .mod___VARIABLE_moduleName___) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Input.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self)
        )
    }
}

struct ___VARIABLE_moduleName___MainDestination {
    let activation: MainboardActivation<___VARIABLE_moduleName___Input>
    let interaction: MainboardInteraction<___VARIABLE_moduleName___Command>
    let flow: FlowHandler<___VARIABLE_moduleName___Output>
}

extension MotherboardType where Self: FlowManageable {
    func io___VARIABLE_moduleName___(_ identifier: BoardID = .mod___VARIABLE_moduleName___) -> ___VARIABLE_moduleName___MainDestination {
        ___VARIABLE_moduleName___MainDestination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Input.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self),
            flow: matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self)
        )
    }
}
