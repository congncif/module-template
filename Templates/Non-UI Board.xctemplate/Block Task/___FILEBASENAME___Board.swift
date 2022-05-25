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
        BlockTaskBoard<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>(identifier: identifier, executingType: .default, executor: { board, input, completion in
            <#completion#>
            return .none
        })
    }
}
