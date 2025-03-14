//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Boardy
import Foundation
import SiFUtilities
import UIKit

final class ___VARIABLE_moduleName___Board: ModernContinuableBoard, GuaranteedBoard, GuaranteedOutputSendingBoard, GuaranteedActionSendingBoard, GuaranteedCommandBoard {
	typealias InputType = ___VARIABLE_moduleName___Input
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
        let component = builder.build(withDelegate: self, input: input)
        let viewController = component.userInterface
        watch(content: component.controller)
        motherboard.putIntoContext(viewController)

        // Show content
        rootViewController.show(viewController)

        // Connect event buses
        completeBus.connect(target: self) { target, isDone in
            target.rootViewController.returnHere { [weak target] in
                target?.complete(isDone)
            }
        }
    }

    /// Setup a barrier that needs to be overcome before activating
    func activationBarrier(withGuaranteedInput input: InputType) -> ActivationBarrier? { nil }

    /// Handle the command received from other boards
    func interact(guaranteedCommand: CommandType) {}

    // MARK: Private properties

    private let completeBus = Bus<Bool>()

    private var controller: ___VARIABLE_moduleName___Controllable? {
        lastAvailableWatchedContent()
    }
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {
    func loadData() {}

    func close(_ isDone: Bool) {
        completeBus.transport(input: isDone)
    }

    func performCompletion(_ isDone: Bool) {
        completeBus.transport(input: isDone)
    }
}

private extension ___VARIABLE_moduleName___Board {
    func registerFlows() {}
}
