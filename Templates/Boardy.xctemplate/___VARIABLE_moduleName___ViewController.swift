//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ViewStateCore

final class ___VARIABLE_moduleName___ViewController: UIViewController, ___VARIABLE_moduleName___Controller {
    // MARK: Dependencies

    weak var delegate: ___VARIABLE_moduleName___Delegate?

    // MARK: LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Private computed & temporary properties

    // MARK: IBOutlets / IBActions
}

// MARK: - Behaviors

extension ___VARIABLE_moduleName___ViewController {}

// MARK: - ViewState

extension ___VARIABLE_moduleName___ViewController: DedicatedViewStateRenderable {
    func dedicatedRender(state: ___VARIABLE_moduleName___ViewState) {
        // handle state changes
    }
}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___ViewController {}
