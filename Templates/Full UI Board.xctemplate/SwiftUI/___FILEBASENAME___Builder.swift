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
        let state = ___VARIABLE_moduleName___ViewState(input: input)

        let presenter = ___VARIABLE_moduleName___Presenter(state: state)

        let controller = ___VARIABLE_moduleName___Controller(presenter: presenter, input: input)
        controller.delegate = delegate

        let contentView = ___VARIABLE_moduleName___ContentView(interactor: controller, state: state)
        let viewController = ___VARIABLE_moduleName___ViewController(rootView: contentView)
        viewController.actionDelegate = delegate
        viewController.interactor = controller

        return XXXInterface(userInterface: viewController, controller: controller)
    }
}
