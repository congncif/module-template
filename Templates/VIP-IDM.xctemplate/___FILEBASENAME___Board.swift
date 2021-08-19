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

final class ___VARIABLE_moduleName___Board: Board, GuaranteedBoard, GuaranteedOutputSendingBoard {
	typealias InputType = ___VARIABLE_moduleName___Input
    typealias OutputType = ___VARIABLE_moduleName___Output

    private let builder: ___VARIABLE_moduleName___Buildable

    init(identifier: BoardID = <#.___VARIABLE_moduleName___#>, builder: ___VARIABLE_moduleName___Buildable) {
        self.builder = builder
        super.init(identifier: identifier)
    }

    func activate(withGuaranteedInput input: InputType) {
        let component = builder.build(withDelegate: self)
        // rootViewController.show(component.userInterface)
    }
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {}
