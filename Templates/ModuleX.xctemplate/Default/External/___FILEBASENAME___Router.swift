//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import ModuleX

final class ___VARIABLE_moduleName___Router: Router, ___VARIABLE_moduleName___RouterProtocol {
    private weak var sourceModule: ___VARIABLE_moduleName___ModuleInterface?

	func connectSourceModule(_ sourceModule: ___VARIABLE_moduleName___ModuleInterface) {
		super.connectSourceModule(sourceModule)
    	self.sourceModule = sourceModule
    }

    private var connectedSource: ___VARIABLE_moduleName___ModuleInterface {
        guard let source = sourceModule else {
            preconditionFailure("💥💥💥 Source module was not set or disconnected before using.")
        }
        return source
    }

//	private struct <#TargetModuleOutputAdapter#>: <#TargetModuleOutputProtocol#> {
//      weak var output: ___VARIABLE_moduleName___ModuleInterface?
//  }

	// <#private var nextBuilder: NextModuleBuilderProtocol?#>

// func intendedDestination(_ nextBuilder: NextModuleBuilderProtocol) -> Self {
//     self.nextBuilder = nextBuilder
// 	return self
// }

}

protocol ___VARIABLE_moduleName___RouterFactoryType {
	func getRouter() -> ___VARIABLE_moduleName___RouterProtocol
}

struct ___VARIABLE_moduleName___RouterFactory: ___VARIABLE_moduleName___RouterFactoryType {
	init() {

	}

	func getRouter() -> ___VARIABLE_moduleName___RouterProtocol {
		let router = ___VARIABLE_moduleName___Router()
		return router
	}
}