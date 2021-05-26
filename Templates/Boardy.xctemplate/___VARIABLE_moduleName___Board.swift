//
//  ___VARIABLE_moduleName___Board.swift
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation
import UIKit

final class ___VARIABLE_moduleName___Board: ContinuousBoard, GuaranteedBoard, GuaranteedOutputSendingBoard {
	typealias InputType = <#Any#>
    typealias OutputType = <#Any#>

    private let builder: ___VARIABLE_moduleName___Buildable

    init(identifier: BoardID, builder: ___VARIABLE_moduleName___Buildable, continuousBoard: FlowMotherboard) {
        self.builder = builder
        super.init(identifier: identifier, motherboard: continuousBoard)
        registerFlows()
    }

    func activate(withGuaranteedInput input: InputType) {
        let viewController = builder.build(withDelegate: self)
        rootViewController.show(viewController)
    }
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {}

private extension ___VARIABLE_moduleName___Board {
    func registerFlows() {}
}
