//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ViewStateCore

final class ___VARIABLE_moduleName___View: UIView, ___VARIABLE_moduleName___ViewProtocol {
    weak var actionDelegate: ___VARIABLE_moduleName___ViewActionDelegate?
}

extension ___VARIABLE_moduleName___View: DedicatedViewStateFillable {
    func dedicatedFillingOptions(_ state: ___VARIABLE_moduleName___ViewState) -> [FillingOption] {
        // <#Configure to render View here#>
        return []
    }
}
