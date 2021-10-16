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
    static func make(identifier: BoardID, producer: ActivableBoardProducer) -> ActivatableBoard {
        FlowBoard<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output>(identifier: identifier, producer: producer) { it in
            <#register flows#>
        } flowActivation: { it, input in
            <#activate#>
        }
    }
}
