//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation
import SiFUtilities

enum ___VARIABLE_moduleName___TaskBoardFactory {
    static func get(identifier: BoardID) -> ActivatableBoard {
        TaskBoard<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>(identifier: identifier) { board, input, completion in
            <#completion#>
        }
        processingHandler: { $0.showDefaultLoading($0.isProcessing) }
    }
}
