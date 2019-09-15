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

    init(sourceModule: ___VARIABLE_moduleName___ModuleInterface) {
    	super.init(defaultSourceModule: sourceModule)
    	self.sourceModule = sourceModule
    }

//	private struct <#TargetModuleOutputAdapter#>: <#TargetModuleOutputProtocol#> {
//      weak var output: ___VARIABLE_moduleName___InputProtocol?
//  }

	// <#private var nextBuilder: NextModuleBuilderProtocol?#>

// func intendedDestination(_ nextBuilder: NextModuleBuilderProtocol) -> Self {
//     self.nextBuilder = nextBuilder
// 	return self
// }

}

struct ___VARIABLE_moduleName___RouterFactory: ___VARIABLE_moduleName___RouterFactoryType {
	init() {

	}

	func getRouter(sourceModule: ___VARIABLE_moduleName___ModuleInterface) -> ___VARIABLE_moduleName___RouterProtocol {
		let router = ___VARIABLE_moduleName___Router(sourceModule: sourceModule)
		return router
	}
}