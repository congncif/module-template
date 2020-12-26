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

    init() {}
    
    func connect(with associatedViewController: UIViewController?) {
        self.associatedViewController = associatedViewController
    }

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

    func showErrorAlert(title: String, message: String, cancelTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: cancelTitle, style: .cancel, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
    }
}
