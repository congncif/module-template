//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___View: AnyObject {}

final class ___VARIABLE_moduleName___ViewController: UIViewController {
    // MARK: Dependencies

    weak var delegate: ___VARIABLE_moduleName___ActionDelegate?

    var interactor: ___VARIABLE_moduleName___Interactable!

    // MARK: LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.didBecomeActive()
    }

    // MARK: Private computed & temporary properties

    // MARK: IBOutlets / IBActions
}

// MARK: - Behaviors

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___View {}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___ViewController {}
