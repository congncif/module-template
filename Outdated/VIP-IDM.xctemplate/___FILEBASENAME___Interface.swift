//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation
import UIKit

protocol ___VARIABLE_moduleName___Interface {
    var userInterface: UIViewController { get }
    var controller: ___VARIABLE_moduleName___Controllable { get }
}

struct ___VARIABLE_moduleName___Component: ___VARIABLE_moduleName___Interface {
    let userInterface: UIViewController
    let controller: ___VARIABLE_moduleName___Controllable
}
