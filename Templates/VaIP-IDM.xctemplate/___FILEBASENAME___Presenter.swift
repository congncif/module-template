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
