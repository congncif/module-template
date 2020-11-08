//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import IDMCore

// MARK: - Presenter

extension ___VARIABLE_moduleName___PresenterProtocol {
    var dataResponseHandler: DataProcessor<___VARIABLE_moduleName___ResponseModel> {
        return DataProcessor<___VARIABLE_moduleName___ResponseModel>(dataProcessing: { _ in
            // <#Process data here, cool where to convert response model to ViewState#>
        })
    }
}

extension ___VARIABLE_moduleName___PresenterProtocol where Self: CompoundErrorHandling {
    var errorHandler: ErrorHandlingProtocol {
        return errorHandlingProxy
    }
}