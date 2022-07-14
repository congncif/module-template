//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Boardy
import Foundation
import SiFUtilities
import UIKit

final class ___VARIABLE_moduleName___Board: ModernContinuableBoard, GuaranteedBoard, GuaranteedOutputSendingBoard, GuaranteedActionSendingBoard, GuaranteedCommandBoard {
	typealias InputType = ___VARIABLE_moduleName___Parameter
    typealias OutputType = ___VARIABLE_moduleName___Output
    typealias FlowActionType = ___VARIABLE_moduleName___Action
    typealias CommandType = ___VARIABLE_moduleName___Command

    // MARK: Dependencies

    private let builder: ___VARIABLE_moduleName___Buildable

    init(identifier: BoardID, builder: ___VARIABLE_moduleName___Buildable, producer: ActivatableBoardProducer) {
        self.builder = builder
        super.init(identifier: identifier, boardProducer: producer)
        registerFlows()
    }

    /// Build and run an instance of Boardy micro-service
    func activate(withGuaranteedInput input: InputType) {
        let component = builder.build(withDelegate: self)
        let viewController = component.userInterface
        motherboard.putIntoContext(viewController)
        rootViewController.show(viewController)
    }

    /// Handle the command received from other boards
    func interact(guaranteedCommand: CommandType) {}

    // MARK: Private properties
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {
    func loadData() {}
}

private extension ___VARIABLE_moduleName___Board {
    func registerFlows() {}
}
