//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit
import ViewStateCore

final class ___VARIABLE_moduleName___ViewController: UIViewController, ___VARIABLE_moduleName___ControllerProtocol, ___VARIABLE_moduleName___ModuleInterface {
    // MARK: - In/Out

    private var myOutput: ___VARIABLE_moduleName___OutputProtocol?
    private var myRouter: ___VARIABLE_moduleName___RouterProtocol?

    public func connect(output: ___VARIABLE_moduleName___OutputProtocol) {
        self.myOutput = output
    }

    public func connect(router: ___VARIABLE_moduleName___RouterProtocol) {
        self.myRouter = router
    }

    public var output: ___VARIABLE_moduleName___OutputProtocol? {
        guard let reference = myOutput else {
            assertionFailure("💥💥💥 Output was not set or disconnected before using.")
            return nil
        }
        return reference
    }

    public var router: ___VARIABLE_moduleName___RouterProtocol? {
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

    // MARK: - Lifecycle

    init(customView: UIView) {
        self.customView = customView
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func loadView() {
        if let customView = customView {
            view = customView
        } else {
            super.loadView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidFinishInitialLayout() {
        // Guarantee all mandatory properties must be injected.
        assert(self.integrator != nil)

        activateView()
    }

    // MARK: - Privates

    private var customView: UIView?
}

// MARK: - ActionDelegate

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewActionDelegate {}
