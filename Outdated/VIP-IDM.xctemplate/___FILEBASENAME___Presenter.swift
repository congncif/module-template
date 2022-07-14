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

   func beginLoading() {
        view?.beginLoading()
    }

    func finishLoading() {
        view?.finishLoading()
    }

    func handle(error: Error) {
        view?.handle(error: error)
    }
}
