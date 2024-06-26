//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation
import UIKit
import ViewStateCore

final class ___VARIABLE_moduleName___Controller: NSObject, ___VARIABLE_moduleName___ControllerProtocol, ___VARIABLE_moduleName___Module, ___VARIABLE_moduleName___InputProtocol {
    // MARK: - In/Out

    private var myOutput: ___VARIABLE_moduleName___OutputProtocol?
    private var myRouter: ___VARIABLE_moduleName___RouterProtocol?

    public func connect(output: ___VARIABLE_moduleName___OutputProtocol) {
        self.myOutput = output
    }

    public func connect(router: ___VARIABLE_moduleName___RouterProtocol) {
        self.myRouter = router
    }

    var output: ___VARIABLE_moduleName___OutputProtocol? {
        guard let reference = myOutput else {
            assertionFailure("💥💥💥 Output was not set or disconnected before using.")
            return nil
        }
        return reference
    }

    var router: ___VARIABLE_moduleName___RouterProtocol? {
        guard let reference = myRouter else {
            assertionFailure("💥💥💥 Router was not set or disconnected before using.")
            return nil
        }
        return reference
    }

    // MARK: - Dependencies

    private(set) var integrator: ___VARIABLE_moduleName___AbstractIntegrator!

    private(set) var presenter: ___VARIABLE_moduleName___PresenterProtocol!

    // MARK: - Dependency Injections

    /// Internal
    func setPresenter(_ presenter: ___VARIABLE_moduleName___PresenterProtocol) {
        self.presenter = presenter
    }

    /// Public

    public func inject(integrator: ___VARIABLE_moduleName___AbstractIntegrator) {
        self.integrator = integrator
    }

    // MARK: - Input
}

// MARK: - ActionDelegate

extension ___VARIABLE_moduleName___Controller: ___VARIABLE_moduleName___ViewActionDelegate {}
