//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___VARIABLE_moduleName___UserInterfaceAdapter {
    func connect(with associatedViewController: UIViewController?)
}

protocol ___VARIABLE_moduleName___Interface {
    var adapter: ___VARIABLE_moduleName___UserInterfaceAdapter { get }
    var controller: ___VARIABLE_moduleName___Controllable { get }
}

struct ___VARIABLE_moduleName___Component: ___VARIABLE_moduleName___Interface {
    let adapter: ___VARIABLE_moduleName___UserInterfaceAdapter
    let controller: ___VARIABLE_moduleName___Controllable
}
