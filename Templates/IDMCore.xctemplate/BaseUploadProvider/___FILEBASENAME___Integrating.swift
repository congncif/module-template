//
//  ___FILENAME___
//  ___TARGETNAME___
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
extension ___VARIABLE_moduleName___DataModel: ModelProtocol {}

extension ___VARIABLE_moduleName___ResponseModel: ProgressDataModelProtocol, ModelProtocol {}

/**
 * Data Provider
 */
public typealias ___VARIABLE_moduleName___BaseProvider = AnyResultDataProvider<UploadFilesParameter>

/**
 * Integrator
 */
public final class ___VARIABLE_moduleName___Integrator: MagicalIntegrator<___VARIABLE_moduleName___BaseProvider, ___VARIABLE_moduleName___ResponseModel> {}

