//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation

final class ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___Presentable {
    var view: ___VARIABLE_moduleName___Viewable?

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
