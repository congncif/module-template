//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Foundation

final class ___VARIABLE_moduleName___Controller {
    weak var delegate: ___VARIABLE_moduleName___Delegate!

    init(input: ___VARIABLE_moduleName___Input) {
        self.input = input
    }

    // MARK: Private properties

    private let input: ___VARIABLE_moduleName___Input
}

// MARK: - As Controller

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Controllable {
    func becomeActive() {}
}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___Controller {}
