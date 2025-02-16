//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Boardy
import UIKit

// MARK: - Inward

/// Use for pushing messages inwards from outside
protocol ___VARIABLE_moduleName___Controllable: AnyObject {
    func becomeActive()
}

// MARK: - Outward

/// Interface combined of above two delegates for convenience using purpose
protocol ___VARIABLE_moduleName___Delegate: DetachableObject {
    func performCompletion(_ isDone: Bool)
}

/// Construct and connect dependencies
protocol ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?, input: ___VARIABLE_moduleName___Input) -> ___VARIABLE_moduleName___Controllable
}
