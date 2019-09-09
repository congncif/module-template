//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import ModuleX

struct ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterProtocol {
    weak var sourceModule: ___VARIABLE_moduleName___ModuleInterface?

    init(sourceModule: ___VARIABLE_moduleName___ModuleInterface) {
        self.sourceModule = sourceModule
    }
}

struct ___VARIABLE_moduleName___RouterFactory: ___VARIABLE_moduleName___RouterFactoryType {
	func getRouter(sourceModule: ___VARIABLE_moduleName___ModuleInterface) -> ___VARIABLE_moduleName___RouterProtocol {
		let router = ___VARIABLE_moduleName___Router(sourceModule: sourceModule)
		return router
	}
}