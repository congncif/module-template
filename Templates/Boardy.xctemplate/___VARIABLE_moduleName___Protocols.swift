//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

struct ___VARIABLE_moduleName___Interface {
    let userInterface: UIViewController
    let controller: ___VARIABLE_moduleName___Controllable
}

protocol ___VARIABLE_moduleName___Controllable: AnyObject {}

protocol ___VARIABLE_moduleName___Delegate: AnyObject {}

protocol ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?) -> ___VARIABLE_moduleName___Interface
}
