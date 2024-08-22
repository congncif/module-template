//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Boardy
import Foundation
import SiFUtilities

enum ___VARIABLE_moduleName___BoardFactory {
    static func make(identifier: BoardID) -> ActivatableBoard {
        TaskBoard<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>(identifier: identifier) { board, input, completion in
            <#completion#>
        }
        processingHandler: { $0.showDefaultLoading($0.isProcessing) }
    }
}
