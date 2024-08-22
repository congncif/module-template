//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import UIKit
import SwiftUI

/// Use for interacting with data before sending messages to outside
protocol ___VARIABLE_moduleName___Interactable {
    func didBecomeActive()
}

final class ___VARIABLE_moduleName___ViewController: UIHostingController<___VARIABLE_moduleName___ContentView>, ___VARIABLE_moduleName___UserInterface {
    // MARK: Dependencies

    weak var delegate: ___VARIABLE_moduleName___ActionDelegate!

    var interactor: ___VARIABLE_moduleName___Interactable!

    // MARK: LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        interactor.didBecomeActive()
    }

    // MARK: Private computed & temporary properties

    // MARK: IBOutlets / IBActions
}

// MARK: - Behaviors

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___Viewable {}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___ViewController {
    func setupView() {}
}
