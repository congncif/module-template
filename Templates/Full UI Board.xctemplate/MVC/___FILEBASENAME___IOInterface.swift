//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Boardy
import Foundation

// MARK: - ID

extension BoardID {
    static let mod___VARIABLE_moduleName___: BoardID = "mod.___TARGETNAME___.___VARIABLE_moduleName___"
}

// MARK: - Interface

typealias ___VARIABLE_moduleName___MainDestination = MainboardGenericDestination<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output, ___VARIABLE_moduleName___Command, ___VARIABLE_moduleName___Action>

extension MotherboardType where Self: FlowManageable {
    func io___VARIABLE_moduleName___(_ identifier: BoardID = .mod___VARIABLE_moduleName___) -> ___VARIABLE_moduleName___MainDestination {
        ___VARIABLE_moduleName___MainDestination(destinationID: identifier, mainboard: self)
    }
}
