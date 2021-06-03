//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import ViewStateCore

/// Use for interacting with data before sending messages to outside
protocol ___VARIABLE_moduleName___Interactable {
    func didBecomeActive()
}

protocol ___VARIABLE_moduleName___ViewStateBindable: AnyObject {
    func bind(to subscriber: ViewStateSubscriberObject)
}

final class ___VARIABLE_moduleName___ViewState: ViewState {
    //@objc fileprivate dynamic var
}

final class ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___ViewStateBindable {
    weak var delegate: ___VARIABLE_moduleName___ControlDelegate?

    private lazy var state = ___VARIABLE_moduleName___ViewState()

    func bind(to subscriber: ViewStateSubscriberObject) {
        state.register(subscriberObject: subscriber)
    }
}

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Interactable {
    func didBecomeActive() {}
}

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___Controllable {}
