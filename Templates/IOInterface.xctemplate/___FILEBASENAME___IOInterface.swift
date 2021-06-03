//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation

public enum ___VARIABLE_moduleName___Input {
    case none
}

public enum ___VARIABLE_moduleName___Output {}

public protocol ___VARIABLE_moduleName___Activatable {
    func activate(with input: ___VARIABLE_moduleName___Input)
}

// MARK: - Activations

extension ___VARIABLE_moduleName___Activatable {
    public func activate() {
        activate(with: .none)
    }
}

/// For Motherboard call
struct ___VARIABLE_moduleName___MainActivation {
    let identifier: BoardID
    let mainboard: MotherboardType
}

extension ___VARIABLE_moduleName___MainActivation: ___VARIABLE_moduleName___Activatable {
    func activate(with input: ___VARIABLE_moduleName___Input) {
        mainboard.activateBoard(BoardInput(target: identifier, input: input))
    }
}

/// For other Board call
struct ___VARIABLE_moduleName___Activation {
    let identifier: BoardID
    let source: ActivatableBoard
}

extension ___VARIABLE_moduleName___Activation: ___VARIABLE_moduleName___Activatable {
    func activate(with input: ___VARIABLE_moduleName___Input) {
        source.nextToBoard(BoardInput(target: identifier, input: input))
    }
}

// MARK: - Handler

public protocol ___VARIABLE_moduleName___OutputHandling {
    func addTarget<Target: AnyObject>(_ target: Target, action: @escaping (Target, ___VARIABLE_moduleName___Output) -> Void)
}

struct ___VARIABLE_moduleName___OutputHandler {
    let identifier: BoardID
    let mainboard: FlowManageable
}

extension ___VARIABLE_moduleName___OutputHandler: ___VARIABLE_moduleName___OutputHandling {
    func addTarget<Target: AnyObject>(_ target: Target, action: @escaping (Target, ___VARIABLE_moduleName___Output) -> Void) {
        mainboard.registerFlow(matchedIdentifiers: identifier, target: target, uniqueOutputType: ___VARIABLE_moduleName___Output.self, nextHandler: action)
    }
}

// MARK: - Quick Access

extension ActivatableBoard {
    public func <#___VARIABLE_moduleName___#>(identifier: BoardID) -> ___VARIABLE_moduleName___Activatable {
        switch self {
        case let main as MotherboardType:
            return ___VARIABLE_moduleName___MainActivation(identifier: identifier, mainboard: main)
        default:
            return ___VARIABLE_moduleName___Activation(identifier: identifier, source: self)
        }
    }
}

extension FlowManageable {
    public func <#___VARIABLE_moduleName___#>Handler(identifier: BoardID) -> ___VARIABLE_moduleName___OutputHandling {
        return ___VARIABLE_moduleName___OutputHandler(identifier: identifier, mainboard: self)
    }
}
