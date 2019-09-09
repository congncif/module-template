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

        let navigationView = ___VARIABLE_moduleName___NavigationView()
        navigationView.navigationItem = viewController.navigationItem

        var presenter = ___VARIABLE_moduleName___Presenter()

        viewController.setPresenter(presenter)

        presenter.actionDelegate = viewController
        presenter.add(errorHandler: viewController.asErrorHandler())
        presenter.dataLoadingHandler = contentView.asLoadingHandler()

        presenter.state.register(subscriberObject: contentView)
        presenter.state.register(subscriberObject: navigationView, retain: true)

        contentView.actionDelegate = viewController
        navigationView.actionDelegate = viewController

        // Inject dependencies

        viewController.inject(integrator: integratorFactory.getIntegrator())

        if let routerFactory = self.routerFactory {
        	let router = routerFactory.getRouter(sourceModule: viewController)
        	viewController.connect(router: router)
        }

        if let delegate = output {
            viewController.connect(output: delegate)
        }

        return viewController
    }
}
