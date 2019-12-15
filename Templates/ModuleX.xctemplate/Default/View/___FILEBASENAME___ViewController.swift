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

final class ___VARIABLE_moduleName___ViewController: UIViewController, ___VARIABLE_moduleName___ModuleInterface, ___VARIABLE_moduleName___ViewProtocol {
    // MARK: - Controller
    private var myModuleController: ___VARIABLE_moduleName___Module!

    public func pair(with moduleController: ___VARIABLE_moduleName___Module) {
        self.myModuleController = moduleController
    }

    public var moduleController: ___VARIABLE_moduleName___Module {
        if myModuleController == nil {
            assertionFailure("💥💥💥 ModuleController was not set before using.")
        }
        return myModuleController
    }

    // MARK: - ActionDelegate

    weak var actionDelegate: ___VARIABLE_moduleName___ViewActionDelegate?

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

        actionDelegate?.activate()
    }

    // MARK: - Privates

    private var customView: UIView?
}

extension ___VARIABLE_moduleName___ViewController: DedicatedViewStateFillable {
    func dedicatedFillingOptions(_ state: ___VARIABLE_moduleName___ViewState) -> [FillingOption] {
        // <#Configure to render View here#>
        return []
    }
}
