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

final class ___VARIABLE_moduleName___ViewController: UIViewController, ___VARIABLE_moduleName___ViewProtocol {
    // MARK: - Controller
    
    @IBOutlet var controller: ___VARIABLE_moduleName___Controller!

    // MARK: - ActionDelegate

    weak var actionDelegate: ___VARIABLE_moduleName___ViewActionDelegate?

    // MARK: - Lifecycle

	override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidFinishInitialLayout() {
        actionDelegate?.activateView()
    }

    // MARK: - Privates
}

extension ___VARIABLE_moduleName___ViewController: DedicatedViewStateFillable {
    func dedicatedFillingOptions(_ state: ___VARIABLE_moduleName___ViewState) -> [FillingOption] {
        // <#Configure to render View here#>
        return []
    }
}
