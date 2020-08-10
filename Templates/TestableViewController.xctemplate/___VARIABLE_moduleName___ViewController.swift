//
//  ___VARIABLE_moduleName___ViewController.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ViewStateCore

final class ___VARIABLE_moduleName___ViewController: UIViewController, ___VARIABLE_moduleName___Controller {
    // MARK: Dependencies

    weak var delegate: ___VARIABLE_moduleName___Delegate?

    lazy var state: ___VARIABLE_moduleName___ViewState = ___VARIABLE_moduleName___ViewState()

    // MARK: LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

        state.register(subscriberObject: self)
    }

    // MARK: Privates

    // @IBOutlet private weak var

    // @IBAction private func
}

// MARK: - Behaviors

extension ___VARIABLE_moduleName___ViewController {
    // testable func
}

// MARK: - ViewState

extension ___VARIABLE_moduleName___ViewController: DedicatedViewStateRenderable {
    func dedicatedRender(state: ___VARIABLE_moduleName___ViewState) {
        // handle state changes
    }
}
