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
    static func make(identifier: BoardID, producer: ActivatableBoardProducer) -> ActivatableBoard {
        FlowBoard<___VARIABLE_moduleName___Input, ___VARIABLE_moduleName___Output, ___VARIABLE_moduleName___Command, ___VARIABLE_moduleName___Action>(identifier: identifier, producer: producer) { it in
            <#register flows#>
        } flowActivation: { it, input in
            <#activate#>
        }
    }
}
