//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation
import IDMCore
import ViewStateCore

/// Properties of ViewState should be protected from outside.

// MARK: - Protected State

final class ___VARIABLE_moduleName___ViewState: ViewState {
//    <#@objc fileprivate(set) dynamic var id: String?#>
}

// MARK: - Presenter

final class ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterProtocol, CompoundErrorHandling {
    let state: ___VARIABLE_moduleName___ViewState
    var errorHandlingProxy: ErrorHandlingProxy

    weak var actionDelegate: ___VARIABLE_moduleName___ViewActionDelegate?

    var dataLoadingHandler: LoadingProtocol!

    init(state: ___VARIABLE_moduleName___ViewState = ___VARIABLE_moduleName___ViewState()) {
        self.state = state
        errorHandlingProxy = ErrorHandlingProxy()
    }

    func openConnectionToView(_ view: ___VARIABLE_moduleName___ViewProtocol) {
        if let viewObject = view as? ViewStateSubscriberObject {
            state.register(subscriberObject: viewObject) // weak reference
        } else {
            state.register(subscriber: view)
        }
    }

    /// Original Data
}

// MARK: - Original Data

extension ___VARIABLE_moduleName___Presenter {}


// MARK: - State Accessibilities

extension ___VARIABLE_moduleName___Presenter {}

// MARK: - State Updates

extension ___VARIABLE_moduleName___Presenter {}
