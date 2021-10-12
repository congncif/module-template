//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_moduleName___Presentable: AnyObject {}

final class ___VARIABLE_moduleName___Interactor {
    weak var delegate: ___VARIABLE_moduleName___ControlDelegate?
    
    private let presenter: ___VARIABLE_moduleName___Presentable

    init(presenter: ___VARIABLE_moduleName___Presentable) {
        self.presenter = presenter
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
