//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import UIKit

struct ___VARIABLE_moduleName___Builder: ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?, input: ___VARIABLE_moduleName___Input) -> ___VARIABLE_moduleName___Interface {
        let viewController = ___VARIABLE_moduleName___ViewController(rootView: ___VARIABLE_moduleName___ContentView())
        viewController.actionDelegate = delegate

        let controller = ___VARIABLE_moduleName___Controller(input: input)
        controller.delegate = delegate
        controller.view = viewController
        
        viewController.interactor = controller

        return ___VARIABLE_moduleName___Interface(userInterface: viewController, controller: controller)
    }
}
