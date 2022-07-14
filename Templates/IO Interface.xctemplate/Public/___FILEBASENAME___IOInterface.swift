//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Boardy
import Foundation

// MARK: - ID

extension BoardID {
    static let pub___VARIABLE_moduleName___: BoardID = "pub.mod.___TARGETNAME___.___VARIABLE_moduleName___"   
}

// MARK: - Interface

public struct ___VARIABLE_moduleName___Destination {
    public let activation: BoardActivation<___VARIABLE_moduleName___Parameter>
    public let blockActivation: BlockTaskBoardActivation<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>
    public let interaction: BoardInteraction<___VARIABLE_moduleName___Command>
    public let completer: BoardCompleter

    public static let defaultIdentifier: BoardID = .pub___VARIABLE_moduleName___
}

public extension ActivatableBoard {
    func io___VARIABLE_moduleName___(_ identifier: BoardID = ___VARIABLE_moduleName___Destination.defaultIdentifier) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Parameter.self),
            blockActivation: blockActivation(identifier, with: BlockTaskParameter<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self),
            completer: completer(identifier)
        )
    }
}

public struct ___VARIABLE_moduleName___MainDestination {
    public let activation: MainboardActivation<___VARIABLE_moduleName___Parameter>
    public let blockActivation: BlockTaskMainboardActivation<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>
    public let interaction: MainboardInteraction<___VARIABLE_moduleName___Command>
    public let completer: MainboardCompleter
    public let flow: FlowHandler<___VARIABLE_moduleName___Output>
    public let action: ActionFlowHandler<___VARIABLE_moduleName___Action>
    public let completion: CompletionFlowHandler

    public static let defaultIdentifier: BoardID = .pub___VARIABLE_moduleName___
}

public extension MotherboardType where Self: FlowManageable {
    func io___VARIABLE_moduleName___(_ identifier: BoardID = ___VARIABLE_moduleName___MainDestination.defaultIdentifier) -> ___VARIABLE_moduleName___MainDestination {
        ___VARIABLE_moduleName___MainDestination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Parameter.self),
            blockActivation: blockActivation(identifier, with: BlockTaskParameter<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self),
            completer: completer(identifier),
            flow: matchedFlow(identifier, with: ___VARIABLE_moduleName___Output.self),
            action: actionFlow(identifier, with: ___VARIABLE_moduleName___Action.self),
            completion: completionFlow(identifier)
        )
    }
}
