//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation
import UIKit

final class ___VARIABLE_moduleName___Board: ContinuousBoard, GuaranteedBoard, GuaranteedOutputSendingBoard {
	typealias InputType = ___VARIABLE_moduleName___Input
    typealias OutputType = ___VARIABLE_moduleName___Output

    private let builder: ___VARIABLE_moduleName___Buildable

    init(identifier: BoardID, builder: ___VARIABLE_moduleName___Buildable, continuousBoard: FlowMotherboard) {
        self.builder = builder
        super.init(identifier: identifier, motherboard: continuousBoard)
        registerFlows()
    }

    func activate(withGuaranteedInput input: InputType) {
        let component = builder.build(withDelegate: self)
        let viewController = component.userInterface
        motherboard.installIntoRoot(viewController)
        rootViewController.show(viewController)
    }
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {
    func didBecomeActive() {}
}

private extension ___VARIABLE_moduleName___Board {
    func registerFlows() {}
}
