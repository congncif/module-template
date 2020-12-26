//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import IDMCore
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
        let contentView = ___VARIABLE_moduleName___View(frame: UIScreen.main.bounds)

        let viewController = ___VARIABLE_moduleName___ViewController(customView: contentView)

        var navigationView = ___VARIABLE_moduleName___NavigationView()
        navigationView.navigationItem = viewController.navigationItem

        var presenter = ___VARIABLE_moduleName___Presenter()

        let controller = ___VARIABLE_moduleName___Controller()

        viewController.pair(with: controller)
        controller.setPresenter(presenter)

        // Inject dependencies

        controller.inject(integrator: integratorFactory.getIntegrator())

        if let routerFactory = self.routerFactory {
        	let router = routerFactory.getRouter(sourceModule: viewController)
        	controller.connect(router: router)
        }

        if let delegate = output {
            controller.connect(output: delegate)
        }

        viewController.actionDelegate = controller
        presenter.actionDelegate = controller
        contentView.actionDelegate = controller
        navigationView.actionDelegate = controller

        presenter.add(errorHandler: viewController.asErrorHandler())
        presenter.dataLoadingHandler = contentView.asLoadingHandler()

        // Connect to show
        presenter.openConnectionToView(contentView)
        presenter.openConnectionToView(navigationView)

        return viewController
    }
}
