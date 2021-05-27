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

enum ___VARIABLE_moduleName___BoardFactory {
    static func get(identifier: BoardID) -> ActivatableBoard {
        TaskBoard<<#In#>, <#Out#>>.init(identifier: identifier) { board, input, completion in
            <#completion#>
        }
        processingHandler: { $0.showDefaultLoading($1) }
    }
}
