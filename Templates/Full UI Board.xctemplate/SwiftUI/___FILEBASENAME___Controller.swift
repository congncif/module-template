//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Foundation

enum ___VARIABLE_moduleName___ModelEvent {
    case newText(String)
}

protocol ___VARIABLE_moduleName___Presentable: AnyObject {
    func mapModel(event: ___VARIABLE_moduleName___ModelEvent)
}

final class ___VARIABLE_moduleName___Controller {
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

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Interactable {
    func didBecomeActive() {
        delegate?.loadData()
    }

    func handle(action: ___VARIABLE_moduleName___ActionEvent) {
        switch action {
        case .changeContent:
            let newValue = ISO8601DateFormatter().string(from: Date())
            presenter.mapModel(event: .newText(newValue))
        }
    }
}

// MARK: - As Controller

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Controllable {}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___Controller {}
