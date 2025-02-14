//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Boardy
import Foundation
import UIKit
import ___VARIABLE_interfaceModuleName___

final class ___VARIABLE_moduleName___Board: ModernContinuableBoard, GuaranteedBoard, GuaranteedOutputSendingBoard, GuaranteedActionSendingBoard, GuaranteedCommandBoard {
	typealias InputType = ___VARIABLE_moduleName___Input
    typealias OutputType = ___VARIABLE_moduleName___Output
    typealias FlowActionType = ___VARIABLE_moduleName___Action
    typealias CommandType = ___VARIABLE_moduleName___Command

    init(identifier: BoardID, producer: ActivatableBoardProducer) {
        super.init(identifier: identifier, boardProducer: producer)
        registerFlows()
    }

    /// Build and run an instance of Boardy micro-service
    func activate(withGuaranteedInput input: InputType) {
        
    }

    /// Handle the command received from other boards
    func interact(guaranteedCommand: CommandType) {}

    // MARK: Private properties
}

private extension ___VARIABLE_moduleName___Board {
    func registerFlows() {}
}
