//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation

public enum ___VARIABLE_moduleName___Input {}

public enum ___VARIABLE_moduleName___Output {}

public protocol ___VARIABLE_moduleName___Activatable {
    func activate(with input: ___VARIABLE_moduleName___Input)
}

// MARK: - Activations

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
