//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Foundation

final class ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___Presentable {
    weak var view: ___VARIABLE_moduleName___Viewable?

    func activate(with model: ___VARIABLE_moduleName___Model) {
        // Map ___VARIABLE_moduleName___Model to ViewModel for View.
        view?.activate(with: ___VARIABLE_moduleName___ViewModel())
    }

    func startProcessing() {
        view?.startLoadingView()
    }

    func finishProcessing() {
        view?.stopLoadingView()
    }

    func handleUndefinedError(_ error: Error) {
        view?.showErrorAlert(title: "", message: error.localizedDescription, cancelTitle: "Close")
    }

    func handleError(_ error: ___VARIABLE_moduleName___Error) {
        // Map ___VARIABLE_moduleName___Error to ViewModel for View.
        // show alert error if needed
    }
}
