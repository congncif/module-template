//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import ModuleX
import SiFUtilities

public struct ___VARIABLE_moduleName___Builder: ___VARIABLE_moduleName___BuilderProtocol {
    private let integratorFactory: ___VARIABLE_moduleName___IntegratorFactoryType
	private let routerFactory: ___VARIABLE_moduleName___RouterFactoryType?

	public init(integratorFactory: ___VARIABLE_moduleName___IntegratorFactoryType,
                routerFactory: ___VARIABLE_moduleName___RouterFactoryType? = nil) {
        self.integratorFactory = integratorFactory
        self.routerFactory = routerFactory
    }

    public func build() -> ___VARIABLE_moduleName___ModuleInterface {
        let viewController = ___VARIABLE_moduleName___ViewController.instantiateFromStoryboard()

        // Inject dependencies

        viewController.inject(integrator: integratorFactory.getIntegrator())

        if let router = routerFactory?.getRouter(sourceModule: viewController) {
            viewController.connect(router: router)
        }
        
        return viewController
    }
}
