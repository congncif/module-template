//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

public protocol ___VARIABLE_moduleName___Manufacturing {
	func getIntegrator() -> ___VARIABLE_moduleName___AbstractIntegrator
}

public struct ___VARIABLE_moduleName___Factory: ___VARIABLE_moduleName___Manufacturing {
	public init() {}
	
	public func getIntegrator() -> ___VARIABLE_moduleName___AbstractIntegrator {
		return ___VARIABLE_moduleName___Integrator(dataProvider: ___VARIABLE_moduleName___DataProvider())
	}
}