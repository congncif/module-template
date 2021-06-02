//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import ViewStateCore

final class ___VARIABLE_moduleName___ViewState: ViewState {
    //@objc fileprivate dynamic var
}

final class ___VARIABLE_moduleName___Controller {
    weak var delegate: ___VARIABLE_moduleName___ControlDelegate?

    private lazy var state = ___VARIABLE_moduleName___ViewState()

    func bind(to subscriber: ViewStateSubscriberObject) {
        state.register(subscriberObject: subscriber)
    }
}

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Interactable {}

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Controllable {}
