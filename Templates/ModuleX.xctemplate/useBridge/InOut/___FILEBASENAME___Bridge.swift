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

final class ___VARIABLE_moduleName___Bridge: NSObject, ___VARIABLE_moduleName___DependencyBridge {
    private(set) var myPresenter = ___VARIABLE_moduleName___Presenter()

    @IBOutlet private weak var viewController: ___VARIABLE_moduleName___ViewController!
    @IBOutlet private weak var contentView: ___VARIABLE_moduleName___View!
    @IBOutlet private weak var navigationView: ___VARIABLE_moduleName___NavigationView!

    var presenter: ___VARIABLE_moduleName___PresenterProtocol! {
        return myPresenter
    }

    override init() {
        super.init()
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        viewController.loadViewIfNeeded()

        viewController.setDependencyBridge(self)

        myPresenter.actionDelegate = viewController
        myPresenter.add(errorHandler: viewController.asErrorHandler())
        myPresenter.dataLoadingHandler = contentView.asLoadingHandler()

        myPresenter.openConnectionToView(contentView)
        myPresenter.openConnectionToView(navigationView)

        navigationView.actionDelegate = viewController
        contentView.actionDelegate = viewController
    }
}
