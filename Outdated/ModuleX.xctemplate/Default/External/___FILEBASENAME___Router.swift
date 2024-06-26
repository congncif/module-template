//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation
import ModuleX

final class ___VARIABLE_moduleName___Router: Router, ___VARIABLE_moduleName___RouterInternalProtocol {
	weak var sourceModule: ___VARIABLE_moduleName___ModuleInterface?

    func backToPrevious() {
        sourceModule?.userInterface.backToPrevious()
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

struct ___VARIABLE_moduleName___RouterFactory: ___VARIABLE_moduleName___RouterFactoryProtocol {
	init() {}

	func getRouter(sourceModule: ___VARIABLE_moduleName___ModuleInterface) -> ___VARIABLE_moduleName___RouterProtocol {
		let router = ___VARIABLE_moduleName___Router()
		router.sourceModule = sourceModule
		return router
	}
}