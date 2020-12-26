//
//  ___VARIABLE_moduleName___Board.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation
import UIKit

final class ___VARIABLE_moduleName___Board: Board, GuaranteedBoard {
	typealias InputType = <#InputType#>

    private let builder: ___VARIABLE_moduleName___Buildable

    private lazy var component = builder.build(withDelegate: self)

    init(identifier: BoardID = <#.___VARIABLE_moduleName___#>, builder: ___VARIABLE_moduleName___Buildable) {
        self.builder = builder
        super.init(identifier: identifier)
    }

    func activate(withGuaranteedInput input: InputType) {
        component.adapter.connect(with: rootViewController)
        component.controller.active()
    }
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {}
