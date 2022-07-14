//
//  ___VARIABLE_moduleName___OutputAdapter.swift
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Foundation

/// Copy this protocol to ___VARIABLE_targetName___ component then make the component conform it.
protocol ___VARIABLE_targetName___Input: AnyObject {
    func accept()
}

/// Copy this protocol to ___VARIABLE_moduleName___ component then set it as outputDelegate.
protocol ___VARIABLE_moduleName___Output: AnyObject {
    func receive()
}

protocol ___VARIABLE_moduleName___OutputAdaptable: ___VARIABLE_moduleName___Output {
    var destination: AnyObject? { get }
}

protocol ___VARIABLE_moduleName___OutputAdapting: ___VARIABLE_moduleName___Output {
    func connect(adapter: ___VARIABLE_moduleName___OutputAdaptable)
}

final class ___VARIABLE_targetName___InputAdapter: ___VARIABLE_moduleName___OutputAdaptable {
    weak var target: ___VARIABLE_targetName___Input?

    init(target: ___VARIABLE_targetName___Input?) {
        self.target = target
    }

    var destination: AnyObject? { target }

    func receive() {
        target?.accept()
    }
}

final class ___VARIABLE_moduleName___OutputAdapter: ___VARIABLE_moduleName___OutputAdapting {
    private var adapters: [___VARIABLE_moduleName___OutputAdaptable] = []

    func connect(adapter: ___VARIABLE_moduleName___OutputAdaptable) {
        adapters.removeAll { $0.destination == nil }
        adapters.append(adapter)
    }

    func receive() {
        adapters.removeAll { $0.destination == nil }
        adapters.forEach { $0.receive() }
    }
}
