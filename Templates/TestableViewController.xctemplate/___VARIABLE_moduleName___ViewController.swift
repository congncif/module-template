//
//  ___VARIABLE_moduleName___ViewController.swift
//  SuperProject
//
//  Created by NGUYEN CHI CONG on 2/9/20.
//  Copyright © 2020 [iF] Solution. All rights reserved.
//

import IDMFoundation
import UIKit
import ViewStateCore

final class ___VARIABLE_moduleName___ViewController: UIViewController {
    // MARK: Dependencies

    let state: ___VARIABLE_moduleName___ViewState = ___VARIABLE_moduleName___ViewState()

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
