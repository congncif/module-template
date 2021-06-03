//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ViewStateCore

final class ___VARIABLE_moduleName___ViewController: UIViewController {
    // MARK: Dependencies

    weak var delegate: ___VARIABLE_moduleName___ActionDelegate?
    weak var stateBinder: ___VARIABLE_moduleName___ViewStateBindable?

    var interactor: ___VARIABLE_moduleName___Interactable!

    // MARK: LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        stateBinder?.bind(to: self)
        interactor.didBecomeActive()
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
