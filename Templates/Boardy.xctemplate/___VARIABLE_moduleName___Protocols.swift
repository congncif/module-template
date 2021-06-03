//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

/// Use for pushing messages inwards from outside
protocol ___VARIABLE_moduleName___Controllable: AnyObject {}

/// Use for ViewController sending messages to outside directly
protocol ___VARIABLE_moduleName___ActionDelegate: AnyObject {}

/// Use for Controller (Interactor) sending messages to outside
protocol ___VARIABLE_moduleName___ControlDelegate: AnyObject {
    func didBecomeActive()
}

/// Interface combined of above two delegates for convenience using purpose
protocol ___VARIABLE_moduleName___Delegate: ___VARIABLE_moduleName___ActionDelegate, ___VARIABLE_moduleName___ControlDelegate {}

/// Defined interface for outside using purpose
struct ___VARIABLE_moduleName___Interface {
    let userInterface: UIViewController
    let controller: ___VARIABLE_moduleName___Controllable
}

/// Construct and connect dependencies
protocol ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?) -> ___VARIABLE_moduleName___Interface
}
