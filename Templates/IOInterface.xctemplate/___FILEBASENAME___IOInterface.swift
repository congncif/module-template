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
    static let pub___VARIABLE_moduleName___: BoardID = "pub.mod.___VARIABLE_moduleName___"   
}

// MARK: - Interface

public struct ___VARIABLE_moduleName___Destination {
    public let activation: BoardActivation<___VARIABLE_moduleName___Parameter>
    public let interaction: BoardInteraction<___VARIABLE_moduleName___Command>

    public static let defaultIdentifier: BoardID = .pub___VARIABLE_moduleName___
}

extension ActivatableBoard {
    public func io___VARIABLE_moduleName___(_ identifier: BoardID = ___VARIABLE_moduleName___Destination.defaultIdentifier) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Parameter.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self)
        )
    }
}

public struct ___VARIABLE_moduleName___MainDestination {
    public let activation: MainboardActivation<___VARIABLE_moduleName___Parameter>
    public let interaction: MainboardInteraction<___VARIABLE_moduleName___Command>
    public let flow: FlowHandler<___VARIABLE_moduleName___Output>

    public static let defaultIdentifier: BoardID = .pub___VARIABLE_moduleName___
}

extension MotherboardType where Self: FlowManageable {
    public func io___VARIABLE_moduleName___(_ identifier: BoardID = ___VARIABLE_moduleName___MainDestination.defaultIdentifier) -> ___VARIABLE_moduleName___MainDestination {
        ___VARIABLE_moduleName___MainDestination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Parameter.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self),
            flow: matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self)
        )
    }
}
