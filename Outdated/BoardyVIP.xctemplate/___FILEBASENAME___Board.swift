//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Boardy
import Foundation
import SiFUtilities
import UIKit

final class ___VARIABLE_moduleName___Board: ModernContinuableBoard, GuaranteedBoard, GuaranteedOutputSendingBoard {
	typealias InputType = ___VARIABLE_moduleName___Parameter
    typealias OutputType = ___VARIABLE_moduleName___Output

    // MARK: Dependencies

    private let builder: ___VARIABLE_moduleName___Buildable

    init(identifier: BoardID, builder: ___VARIABLE_moduleName___Buildable, producer: ActivatableBoardProducer) {
        self.builder = builder
        super.init(identifier: identifier, boardProducer: producer)
        registerFlows()
    }

    func activate(withGuaranteedInput input: InputType) {
        let component = builder.build(withDelegate: self)
        let viewController = component.userInterface
        motherboard.putIntoContext(viewController)
        rootViewController.show(viewController)
    }

    // MARK: Private properties
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {
    func loadData() {}
}

private extension ___VARIABLE_moduleName___Board {
    func registerFlows() {}
}
