//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import UIKit
import SwiftUI

final class ___VARIABLE_moduleName___ViewController: UIHostingController<___VARIABLE_moduleName___ContentView>, ___VARIABLE_moduleName___UserInterface {
    // MARK: Dependencies

    weak var actionDelegate: ___VARIABLE_moduleName___ActionDelegate!

    var interactor: ___VARIABLE_moduleName___Interactable!

    // MARK: LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        interactor.didBecomeActive()
    }

    private func setupView() {
        title = "___VARIABLE_moduleName___ Title"
    }
}

/// Use for interoperating with UIKit hosting
protocol ___VARIABLE_moduleName___ViewControllerInteroperable {}

final class ___VARIABLE_moduleName___ViewControllerProxy: ___VARIABLE_moduleName___ViewControllerInteroperable {
    weak var viewController: ___VARIABLE_moduleName___ViewController!
}
