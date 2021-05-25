//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import ModuleX
import SiFUtilities

public struct ___VARIABLE_moduleName___Builder: ___VARIABLE_moduleName___BuilderProtocol {
    private let integratorFactory: ___VARIABLE_moduleName___IntegratorFactoryProtocol
	private let routerFactory: ___VARIABLE_moduleName___RouterFactoryProtocol?

	public init(integratorFactory: ___VARIABLE_moduleName___IntegratorFactoryProtocol,
                routerFactory: ___VARIABLE_moduleName___RouterFactoryProtocol? = nil) {
        self.integratorFactory = integratorFactory
        self.routerFactory = routerFactory
    }

    public func build(output: ___VARIABLE_moduleName___OutputProtocol?) -> ___VARIABLE_moduleName___ModuleInterface {
        let viewController = ___VARIABLE_moduleName___ViewController.instantiateFromStoryboard()

        // Inject dependencies

        viewController.moduleController.inject(integrator: integratorFactory.getIntegrator())

        if let router = routerFactory?.getRouter(sourceModule: viewController) {
            viewController.moduleController.connect(router: router)
        }

        if let delegate = output {
            viewController.moduleController.connect(output: delegate)
        }
        
        return viewController
    }
}
