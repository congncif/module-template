//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import ___VARIABLE_interfaceModuleName___
import Foundation

/// Use for mapping Domain Model to View Model (View State)
protocol ___VARIABLE_moduleName___Presentable: AnyObject {}

final class ___VARIABLE_moduleName___Interactor {
    weak var delegate: ___VARIABLE_moduleName___ControlDelegate!

    private let presenter: ___VARIABLE_moduleName___Presentable
    private let input: ___VARIABLE_moduleName___Input

    init(presenter: ___VARIABLE_moduleName___Presentable, input: ___VARIABLE_moduleName___Input) {
        self.presenter = presenter
        self.input = input
    }

    // MARK: Private properties
}

// MARK: - As Interactor

extension ___VARIABLE_moduleName___Interactor: ___VARIABLE_moduleName___Interactable {
    func didBecomeActive() {
        delegate?.loadData()
    }
}

// MARK: - As Controller

extension ___VARIABLE_moduleName___Interactor: ___VARIABLE_moduleName___Controllable {}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___Interactor {}
