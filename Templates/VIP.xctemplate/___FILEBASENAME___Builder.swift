//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

final class ___VARIABLE_moduleName___Builder: ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?) -> ___VARIABLE_moduleName___Interface {
        let presenter = ___VARIABLE_moduleName___Presenter()
        let interactor = ___VARIABLE_moduleName___Interactor(presenter: presenter)
        let viewController = ___VARIABLE_moduleName___ViewController(interactor: interactor)

        presenter.view = viewController
        interactor.delegate = delegate

        return ___VARIABLE_moduleName___Component(userInterface: viewController, controller: interactor)
    }
}
