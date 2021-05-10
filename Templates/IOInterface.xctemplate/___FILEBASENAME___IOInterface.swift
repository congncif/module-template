//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import Boardy

public protocol ___VARIABLE_moduleName___Activatable {
    func activate()
}

// MARK: - Activations

/// For Motherboard call
struct ___VARIABLE_moduleName___MainActivation {
    let identifier: BoardID
    let mainboard: MotherboardType
}

extension ___VARIABLE_moduleName___MainActivation: ___VARIABLE_moduleName___Activatable {
    func activate() {
        mainboard.activateBoard(BoardInput(target: identifier))
    }
}

/// For other Board call
struct ___VARIABLE_moduleName___Activation {
    let identifier: BoardID
    let source: ActivatableBoard
}

extension ___VARIABLE_moduleName___Activation: ___VARIABLE_moduleName___Activatable {
    func activate() {
        source.nextToBoard(BoardInput(target: identifier))
    }
}

// MARK: - Factory

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
