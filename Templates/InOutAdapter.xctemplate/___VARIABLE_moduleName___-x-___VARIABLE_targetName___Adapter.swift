//
//  ___VARIABLE_moduleName___Builder.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

//****************************************************************************//
/// Copy this protocol to ___VARIABLE_targetName___ component then make the component conform it.
protocol ___VARIABLE_targetName___Acceptable: AnyObject {
    func accept()
}
//****************************************************************************//

protocol ___VARIABLE_moduleName___Sendable {
    func send()
}

final class ___VARIABLE_targetName___AcceptAdapter: ___VARIABLE_moduleName___Sendable {
    weak var target: ___VARIABLE_targetName___Acceptable?

    init(target: ___VARIABLE_targetName___Acceptable?) {
        self.target = target
    }

    func send() {
        target?.accept()
    }
}

final class ___VARIABLE_moduleName___CompositeAdapter: ___VARIABLE_moduleName___Sendable {
    private var adapters: [___VARIABLE_targetName___AcceptAdapter] = []

    func connect(adapter: ___VARIABLE_targetName___AcceptAdapter) {
        adapters.removeAll { $0.target == nil }
        adapters.append(adapter)
    }

    func send() {
        adapters.removeAll { $0.target == nil }
        adapters.forEach { $0.send() }
    }
}
