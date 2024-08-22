//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Boardy
import Foundation
import ___VARIABLE_interfaceModuleName___

enum ___VARIABLE_moduleName___BoardFactory {
    static func make(identifier: BoardID, executingType: ExecutingType = .concurrent) -> ActivatableBoard {
        BlockTaskBoard<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>(identifier: identifier, executingType: executingType, executor: { board, input, completion in
            <#completion#>
            return .none
        })
    }
}
