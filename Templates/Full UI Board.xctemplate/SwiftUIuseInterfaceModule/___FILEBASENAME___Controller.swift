//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Foundation

protocol ___VARIABLE_moduleName___Viewable: AnyObject {}

final class ___VARIABLE_moduleName___Controller {
    weak var delegate: ___VARIABLE_moduleName___ControlDelegate!
    weak var view: ___VARIABLE_moduleName___Viewable!

    private let input: ___VARIABLE_moduleName___Input

    init(input: ___VARIABLE_moduleName___Input) {
        self.input = input
    }
    
    // MARK: Private properties
}

// MARK: - As Interactor

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Interactable {
    func didBecomeActive() {
        delegate?.loadData()
    }
}

// MARK: - As Controller

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Controllable {}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___Controller {}

// MARK: - View Model