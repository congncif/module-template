//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation
import IDMCore

final class ___VARIABLE_moduleName___Bridge: NSObject {
    private(set) var myPresenter = ___VARIABLE_moduleName___Presenter()
    private let routerFactory = ___VARIABLE_moduleName___RouterFactory()

    @IBOutlet private weak var viewController: ___VARIABLE_moduleName___ViewController!
    @IBOutlet private weak var controller: ___VARIABLE_moduleName___Controller!
    @IBOutlet private weak var contentView: ___VARIABLE_moduleName___View!
    @IBOutlet private weak var navigationView: ___VARIABLE_moduleName___NavigationView!

    override init() {
        super.init()
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        controller.setPresenter(myPresenter)
        myPresenter.actionDelegate = controller
        viewController.pair(with: controller)
        viewController.actionDelegate = controller

        viewController.loadViewIfNeeded()

        myPresenter.add(errorHandler: viewController.asErrorHandler())
        myPresenter.dataLoadingHandler = contentView.asLoadingHandler()
        
        navigationView.actionDelegate = controller
        contentView.actionDelegate = controller

        // Connect to show
        myPresenter.openConnectionToView(contentView)
        myPresenter.openConnectionToView(navigationView)

        // Connect internal router
        let router = routerFactory.getRouter(sourceModule: viewController)
        controller.connect(router: router)
    }
}
