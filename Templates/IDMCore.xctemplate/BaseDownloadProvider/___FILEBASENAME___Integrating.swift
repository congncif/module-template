//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import IDMCore
import IDMFoundation

/**
 * Model
 */
extension ___VARIABLE_moduleName___ResponseModel: ProgressModelProtocol, ModelProtocol {}

/**
 * Data Provider
 */
public typealias ___VARIABLE_moduleName___BaseProvider = AnyResultDataProvider<___VARIABLE_moduleName___Parameter>

/**
 * Integrator
 */
public final class ___VARIABLE_moduleName___Integrator: MagicalIntegrator<___VARIABLE_moduleName___BaseProvider, ___VARIABLE_moduleName___ResponseModel> {}
