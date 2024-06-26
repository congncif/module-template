//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Foundation
import IDMCore
import IDMExtensions

/**
 * Model
 */
extension ___VARIABLE_moduleName___ResponseModel: ModelProtocol {}

/**
 * Data Provider
 */
public typealias ___VARIABLE_moduleName___BaseProvider = AbstractDataProvider<___VARIABLE_moduleName___Parameter, Any>

/**
 * Integrator
 */
public final class ___VARIABLE_moduleName___Integrator: MagicalIntegrator<___VARIABLE_moduleName___BaseProvider, ___VARIABLE_moduleName___ResponseModel> {}
