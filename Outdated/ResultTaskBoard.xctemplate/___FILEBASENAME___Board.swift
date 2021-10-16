//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation

enum ___VARIABLE_moduleName___BoardFactory {
    static func make(identifier: BoardID) -> ActivatableBoard {
        ResultTaskBoard<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Success, ___VARIABLE_moduleName___Failure>(identifier: identifier) { input, callback in
            <#completion#>
        }
    }
}
