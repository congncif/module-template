//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import IDMFoundation

public protocol ___VARIABLE_moduleName___IntegratorFactoryType {
	func getIntegrator() -> ___VARIABLE_moduleName___AbstractIntegrator
}

public struct ___VARIABLE_moduleName___IntegratorFactory: ___VARIABLE_moduleName___IntegratorFactoryType {
	public init() {}
	
	public func getIntegrator() -> ___VARIABLE_moduleName___AbstractIntegrator {
		return ___VARIABLE_moduleName___Integrator(dataProvider: ___VARIABLE_moduleName___DownloadProvider(route: <#NetworkRoute#>), executingType: .only)
	}
}