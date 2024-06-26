//
//  ___VARIABLE_moduleName___ViewController.swift
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
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