//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

final class ___VARIABLE_moduleName___ViewController: UIViewController {
    private let interactor: ___VARIABLE_moduleName___Interactable

    init(interactor: ___VARIABLE_moduleName___Interactable) {
        self.interactor = interactor
        super.init(nibName: String(describing: ___VARIABLE_moduleName___ViewController.self), bundle: <#BundleToken.sharedResources#>)
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

    func startLoadingView() {
        // Show progress animation while waiting a process
    }

    func stopLoadingView() {
        // Hide progress animation when processing done
    }

    func showErrorAlert(title: String?, message: String, cancelTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: cancelTitle, style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___ViewController {}
