//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

final class ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___Presentable {
    var view: ___VARIABLE_moduleName___Viewable?

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
