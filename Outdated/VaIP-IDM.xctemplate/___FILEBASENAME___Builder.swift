//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Foundation

final class ___VARIABLE_moduleName___Builder: ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?) -> ___VARIABLE_moduleName___Interface {
        let presenter = ___VARIABLE_moduleName___Presenter()
        let interactor = ___VARIABLE_moduleName___Interactor(presenter: presenter)
        let viewAdapter = ___VARIABLE_moduleName___ViewAdapter(interactor: interactor)

        presenter.view = viewAdapter
        interactor.delegate = delegate

        return ___VARIABLE_moduleName___Component(adapter: viewAdapter, controller: interactor)
    }
}
