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

public struct ___VARIABLE_moduleName___Destination {
    public let activation: BoardActivation<___VARIABLE_moduleName___Input>
    public let interaction: BoardInteraction<___VARIABLE_moduleName___Command>
}

extension ActivatableBoard {
    public func io___VARIABLE_moduleName___(_ identifier: BoardID) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Input.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self)
        )
    }
}

public struct ___VARIABLE_moduleName___MainDestination {
    public let activation: MainboardActivation<___VARIABLE_moduleName___Input>
    public let interaction: MainboardInteraction<___VARIABLE_moduleName___Command>
    public let flow: FlowHandler<___VARIABLE_moduleName___Output>
}

extension MotherboardType where Self: FlowManageable {
    public func io___VARIABLE_moduleName___(_ identifier: BoardID) -> ___VARIABLE_moduleName___MainDestination {
        ___VARIABLE_moduleName___MainDestination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Input.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self),
            flow: matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self)
        )
    }
}
