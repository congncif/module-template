//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Boardy
import Foundation

// MARK: - ID

extension BoardID {
    static let mod___VARIABLE_moduleName___: BoardID = "mod.___TARGETNAME___.___VARIABLE_moduleName___"
}

// MARK: - Interface

struct ___VARIABLE_moduleName___Destination {
    let activation: BoardActivation<___VARIABLE_moduleName___Parameter>
    let blockActivation: BlockTaskBoardActivation<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>
    let interaction: BoardInteraction<___VARIABLE_moduleName___Command>
    let completer: BoardCompleter
}

extension ActivatableBoard {
    func io___VARIABLE_moduleName___(_ identifier: BoardID = .mod___VARIABLE_moduleName___) -> ___VARIABLE_moduleName___Destination {
        ___VARIABLE_moduleName___Destination(
            activation: activation(identifier, with: ___VARIABLE_moduleName___Parameter.self),
            blockActivation: blockActivation(identifier, with: BlockTaskParameter<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>.self),
            interaction: interaction(identifier, with: ___VARIABLE_moduleName___Command.self),
            completer: completer(identifier)
        )
    }
}

struct ___VARIABLE_moduleName___MainDestination {
    let activation: MainboardActivation<___VARIABLE_moduleName___Parameter>
    let blockActivation: BlockTaskMainboardActivation<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>
    let interaction: MainboardInteraction<___VARIABLE_moduleName___Command>
    let completer: MainboardCompleter
    let flow: FlowHandler<___VARIABLE_moduleName___Output>
    let action: ActionFlowHandler<___VARIABLE_moduleName___Action>
    let completion: CompletionFlowHandler
}

extension MotherboardType where Self: FlowManageable {
    func io___VARIABLE_moduleName___(_ identifier: BoardID = .mod___VARIABLE_moduleName___) -> ___VARIABLE_moduleName___MainDestination {
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
