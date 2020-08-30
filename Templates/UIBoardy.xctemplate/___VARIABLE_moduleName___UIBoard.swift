//
//  ___VARIABLE_moduleName___UIBoard.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation
import UIKit

final class ___VARIABLE_moduleName___UIBoard: UIViewControllerGuaranteedBoard<<#InputType#>> {
    private let builder: ___VARIABLE_moduleName___Buildable

    init(builder: ___VARIABLE_moduleName___Buildable) {
        self.builder = builder
        super.init(identifier: <#.___VARIABLE_moduleName___#>)
    }

    override func buildInterface(withGuaranteedInput input: <#InputType#>) -> UIViewController? {
        builder.build()
    }
}

extension ___VARIABLE_moduleName___UIBoard: ___VARIABLE_moduleName___Delegate {}