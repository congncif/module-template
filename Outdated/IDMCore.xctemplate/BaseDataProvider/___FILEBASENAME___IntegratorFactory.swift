//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Foundation
import IDMFoundation

public protocol ___VARIABLE_moduleName___IntegratorFactoryType {
	func getIntegrator() -> ___VARIABLE_moduleName___AbstractIntegrator
}

public struct ___VARIABLE_moduleName___IntegratorFactory: ___VARIABLE_moduleName___IntegratorFactoryType {
	public init() {}
	
	public func getIntegrator() -> ___VARIABLE_moduleName___AbstractIntegrator {
		return ___VARIABLE_moduleName___Integrator(dataProvider: ___VARIABLE_moduleName___DataProvider(route: <#NetworkRoute#>))
	}
}