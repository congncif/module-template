//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import ModuleX

final class ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterProtocol {
    weak var sourceModule: ___VARIABLE_moduleName___ModuleInterface?

    init() {}

    func backToPrevious() {
        sourceModule?.userInterface.backToPrevious()
    }
}

struct ___VARIABLE_moduleName___RouterFactory: ___VARIABLE_moduleName___RouterFactoryProtocol {
	func getRouter(sourceModule: ___VARIABLE_moduleName___ModuleInterface) -> ___VARIABLE_moduleName___RouterProtocol {
		let router = ___VARIABLE_moduleName___Router()
        router.sourceModule = sourceModule
		return router
	}
}