//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation

struct ___VARIABLE_moduleName___BoardProducer: ActivableBoardProducer {
    let externalProducer: ActivableBoardProducer
    let identifierExtensions: ___VARIABLE_moduleName___IDExtensions

    func produceBoard(identifier: BoardID) -> ActivatableBoard? {
        switch identifier {
        default:
            return NoBoard(identifier: identifier)
        }
    }
}
