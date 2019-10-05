//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import IDMCore
import IDMFoundation

final class ___VARIABLE_moduleName___Bridge: NSObject {
    private(set) var myPresenter = ___VARIABLE_moduleName___Presenter()

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
        let router = ___VARIABLE_moduleName___Router(sourceModule: viewController)
        controller.connect(router: router)
    }
}
