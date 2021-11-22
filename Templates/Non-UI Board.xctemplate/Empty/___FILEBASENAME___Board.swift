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

final class ___VARIABLE_moduleName___Board: ModernContinuableBoard, GuaranteedBoard, GuaranteedOutputSendingBoard, GuaranteedActionSendingBoard {
	typealias InputType = ___VARIABLE_moduleName___Parameter
    typealias OutputType = ___VARIABLE_moduleName___Output
    typealias FlowActionType = ___VARIABLE_moduleName___Action

    init(identifier: BoardID, producer: ActivableBoardProducer) {
        super.init(identifier: identifier, boardProducer: producer)
        registerFlows()
    }

    func activate(withGuaranteedInput input: InputType) {
        
    }
}

private extension ___VARIABLE_moduleName___Board {
    func registerFlows() {}
}
