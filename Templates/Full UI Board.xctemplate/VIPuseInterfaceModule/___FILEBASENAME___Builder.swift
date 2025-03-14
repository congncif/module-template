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
        let nibName = String(describing: ___VARIABLE_moduleName___ViewController.self)
        let bundle = Bundle(for: ___VARIABLE_moduleName___ViewController.self)
        let viewController = UIStoryboard(name: nibName, bundle: bundle).instantiateInitialViewController() as! ___VARIABLE_moduleName___ViewController
        viewController.actionDelegate = delegate

        let presenter = ___VARIABLE_moduleName___Presenter()
        presenter.view = viewController

        let interactor = ___VARIABLE_moduleName___Interactor(presenter: presenter, input: input)
        interactor.delegate = delegate
        
        viewController.interactor = interactor

        return ___VARIABLE_moduleName___Interface(userInterface: viewController, controller: interactor)
    }
}
