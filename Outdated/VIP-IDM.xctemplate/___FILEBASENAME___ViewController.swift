//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Foundation
import UIKit

final class ___VARIABLE_moduleName___ViewController: UIViewController {
    private let interactor: ___VARIABLE_moduleName___Interactable

    init(interactor: ___VARIABLE_moduleName___Interactable) {
        self.interactor = interactor
        super.init(nibName: String(describing: ___VARIABLE_moduleName___ViewController.self), bundle: Bundle(for: ___VARIABLE_moduleName___ViewController.self))
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.activate()
    }

    // MARK: Private computed & temporary properties

    // MARK: IBOutlets / IBActions
}

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___Viewable {
    func activate(with viewModel: ___VARIABLE_moduleName___ViewModel) {
        // <#activate view#>
    }
}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___ViewController {}
