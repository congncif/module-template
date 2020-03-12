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
 * Output of service.
 */
public struct ___VARIABLE_moduleName___DataModel {}

public final class ___VARIABLE_moduleName___ResponseModel: NSObject {
	public var progress: Progress?
    public var isDelaying: Bool = false
    public var data: ___VARIABLE_moduleName___DataModel?
}

/**
 * Service which will perform request with input to get output response.
 */
public typealias ___VARIABLE_moduleName___AbstractIntegrator = AbstractIntegrator<UploadFilesParameter, ___VARIABLE_moduleName___ResponseModel>