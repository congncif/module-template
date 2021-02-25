//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

final class ___VARIABLE_moduleName___Interactor: ___VARIABLE_moduleName___Interactable {
    weak var delegate: ___VARIABLE_moduleName___Delegate?
    
    private let presenter: ___VARIABLE_moduleName___Presentable

    init(presenter: ___VARIABLE_moduleName___Presentable) {
        self.presenter = presenter
    }

    func activate() {
        presenter.activate(with: ___VARIABLE_moduleName___Model())
    }
}

extension ___VARIABLE_moduleName___Interactor: ___VARIABLE_moduleName___Controllable {}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___Interactor {}
