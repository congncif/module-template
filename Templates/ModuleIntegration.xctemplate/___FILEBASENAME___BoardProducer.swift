//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation

struct ___VARIABLE_moduleName___BoardProducer {
    func produceBoard(identifier: BoardID) -> ActivatableBoard? {
        switch identifier {
        default:
            return NoBoard(identifier: identifier)
        }
    }
}
