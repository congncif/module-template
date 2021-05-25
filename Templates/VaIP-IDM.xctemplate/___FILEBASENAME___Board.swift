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

final class ___VARIABLE_moduleName___Board: Board, GuaranteedBoard {
	typealias InputType = <#InputType#>

    private let builder: ___VARIABLE_moduleName___Buildable

    init(identifier: BoardID = <#.___VARIABLE_moduleName___#>, builder: ___VARIABLE_moduleName___Buildable) {
        self.builder = builder
        super.init(identifier: identifier)
    }

    func activate(withGuaranteedInput input: InputType) {
        // Default behaviour is single attaching. Next turn of attaching will detach previous attached same type objects .
        rootViewController.detachObjects(___VARIABLE_moduleName___Controllable.self)
        
        let component = builder.build(withDelegate: self)
        component.adapter.connect(with: rootViewController)
        rootViewController.attachObject(component.controller)
        component.controller.activate()
    }
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {
    func missionCompleted() {
        complete()
    }
}
