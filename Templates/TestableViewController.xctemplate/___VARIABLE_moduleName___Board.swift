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

    init(builder: ___VARIABLE_moduleName___Buildable) {
        self.builder = builder
        super.init(identifier: <#.___VARIABLE_moduleName___#>)
    }

    func activate(withGuaranteedInput input: <#InputType#>) {
        let viewController = builder.build()
        rootViewController.show(viewController)
    }
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {}