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
 * Input of service.
 */
public struct ___VARIABLE_moduleName___Parameter {}

/**
 * Output of service.
 */
public final class ___VARIABLE_moduleName___ResponseModel: NSObject {
    public var progress: Progress?
    public var isDelaying: Bool = false
}

/**
 * Service which will perform request with input to get output response.
 */
public typealias ___VARIABLE_moduleName___AbstractIntegrator = AbstractIntegrator<___VARIABLE_moduleName___Parameter, ___VARIABLE_moduleName___ResponseModel>