//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

final class ___VARIABLE_moduleName___ViewAdapter: ___VARIABLE_moduleName___UserInterfaceAdapter {
    private weak var associatedViewController: UIViewController?

    private unowned let interactor: ___VARIABLE_moduleName___Interactable

    init(interactor: ___VARIABLE_moduleName___Interactable) {
        self.interactor = interactor
    }
    
    func connect(with associatedViewController: UIViewController?) {
        self.associatedViewController = associatedViewController
    }

    // MARK: Private computed & temporary properties

    fileprivate var viewController: UIViewController {
        associatedViewController ?? {
            assertionFailure("associatedViewController was disconnected")
            return UIViewController()
        }()
    }
}

extension ___VARIABLE_moduleName___ViewAdapter: ___VARIABLE_moduleName___Viewable {
    func startLoadingView() {
        // Show progress animation while waiting a process
    }

    func stopLoadingView() {
        // Hide progress animation when processing done
    }

    func showErrorAlert(title: String?, message: String, cancelTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: cancelTitle, style: .cancel, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
    }
}
