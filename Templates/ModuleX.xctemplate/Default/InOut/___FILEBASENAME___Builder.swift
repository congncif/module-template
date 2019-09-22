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

    public func build(output: ___VARIABLE_moduleName___OutputProtocol?) -> ___VARIABLE_moduleName___ModuleInterface {
        let contentView = ___VARIABLE_moduleName___View(frame: UIScreen.main.bounds)

        let viewController = ___VARIABLE_moduleName___ViewController(customView: contentView)

        var navigationView = ___VARIABLE_moduleName___NavigationView()
        navigationView.navigationItem = viewController.navigationItem

        var presenter = ___VARIABLE_moduleName___Presenter()

        let controller = ___VARIABLE_moduleName___Controller()

        viewController.setController(controller)
        controller.setPresenter(presenter)

        presenter.add(errorHandler: viewController.asErrorHandler())
        presenter.dataLoadingHandler = contentView.asLoadingHandler()

        presenter.openConnectionToView(contentView)
        presenter.openConnectionToView(navigationView)

        viewController.actionDelegate = controller
        presenter.actionDelegate = controller
        contentView.actionDelegate = controller
        navigationView.actionDelegate = controller

        // Inject dependencies

        controller.inject(integrator: integratorFactory.getIntegrator())

        if let routerFactory = self.routerFactory {
        	let router = routerFactory.getRouter(sourceModule: viewController)
        	controller.connect(router: router)
        }

        if let delegate = output {
            controller.connect(output: delegate)
        }

        return viewController
    }
}
