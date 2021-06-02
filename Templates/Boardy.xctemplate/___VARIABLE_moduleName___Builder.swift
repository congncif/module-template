//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import SiFUtilities

struct ___VARIABLE_moduleName___Builder: ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?) -> ___VARIABLE_moduleName___Interface {
        let controller = ___VARIABLE_moduleName___ViewController.instantiateFromStoryboard()
        controller.delegate = delegate

        let controller = ___VARIABLE_moduleName___Controller()
        controller.bind(to: viewController)
        
        viewController.attachObject(controller)

        return ___VARIABLE_moduleName___Interface(userInterface: viewController, controller: controller)
    }
}
