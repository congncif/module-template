//
//  ___VARIABLE_moduleName___Board.swift
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Boardy
import Foundation

final class ___VARIABLE_moduleName___Board: Board, GuaranteedBoard, GuaranteedOutputSendingBoard {
	typealias InputType = ___VARIABLE_moduleName___Input
    typealias OutputType = ___VARIABLE_moduleName___Output

    private let builder: ___VARIABLE_moduleName___Buildable

    init(identifier: BoardID, builder: ___VARIABLE_moduleName___Buildable) {
        self.builder = builder
        super.init(identifier: identifier)
    }

    func activate(withGuaranteedInput input: InputType) {
        // Default behaviour is single attaching. Next turn of attaching will detach previous attached same type objects .
        rootViewController.detachObjects(___VARIABLE_moduleName___Controllable.self)
        
        let component = builder.build(withDelegate: self)
        rootViewController.attachObject(component.controller)
        component.controller.activate()
    }
}

extension ___VARIABLE_moduleName___Board: ___VARIABLE_moduleName___Delegate {
    func missionCompleted() {
        complete()
    }
}
