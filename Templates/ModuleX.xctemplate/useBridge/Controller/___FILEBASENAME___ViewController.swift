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

final class ___VARIABLE_moduleName___ViewController: UIViewController, ___VARIABLE_moduleName___ControllerBridgeProtocol, ___VARIABLE_moduleName___ModuleInterface {
	private(set) var output: ___VARIABLE_moduleName___OutputProtocol?
	private(set) var router: ___VARIABLE_moduleName___RouterProtocol?

    private(set) var integrator: ___VARIABLE_moduleName___AbstractIntegrator!

    private(set) var dependencyBridge: ___VARIABLE_moduleName___DependencyBridge!

    public func connect(output: ___VARIABLE_moduleName___OutputProtocol) {
        self.output = output
    }

    public func connect(router: ___VARIABLE_moduleName___RouterProtocol) {
        self.router = router
    }

    public func inject(integrator: ___VARIABLE_moduleName___AbstractIntegrator) {
    	self.integrator = integrator
    }

    func setDependencyBridge(_ bridge: ___VARIABLE_moduleName___DependencyBridge) {
        self.dependencyBridge = bridge
    }

	override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidFinishInitialLayout() {
        activateView()
    }
}

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewActionDelegate {}
