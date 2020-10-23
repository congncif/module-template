//
//  ___VARIABLE_moduleName___Builder.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_moduleName___Sendable {
    func send()
}

//****************************************************************************//
/// Copy this protocol to ___VARIABLE_targetName___ component then make the component conforms it.
protocol ___VARIABLE_targetName___Acceptable: AnyObject {
    func accept()
}
//****************************************************************************//

final class ___VARIABLE_targetName___AcceptAdapter: ___VARIABLE_moduleName___Sendable {
    weak var destination: ___VARIABLE_targetName___Acceptable?

    init(destination: ___VARIABLE_targetName___Acceptable?) {
        self.destination = destination
    }

    var target: AnyObject? {
        return destination
    }

    func send() {
        destination?.accept()
    }
}

final class ___VARIABLE_moduleName___CompositeAdapter: ___VARIABLE_moduleName___Sendable {
    private var adapters: [___VARIABLE_targetName___AcceptAdapter] = []

    func connect(adapter: ___VARIABLE_targetName___AcceptAdapter) {
        adapters.append(adapter)
    }

    func send() {
        let newAdapters = adapters.filter { $0.target != nil }
        adapters = newAdapters
        newAdapters.forEach { $0.send() }
    }
}
