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

    init(identifier: BoardID, continuousBoard: FlowMotherboard) {
        super.init(identifier: identifier, motherboard: continuousBoard)
        registerFlows()
    }

    func activate(withGuaranteedInput input: InputType) {
        // <#code#>
    }
}

private extension ___VARIABLE_moduleName___Board {
    func registerFlows() {
        // <#code#>
    }
}
