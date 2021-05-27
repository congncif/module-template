//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import DadFoundation
import Foundation

struct ___VARIABLE_moduleName___ModuleLoader: ModuleLoader {
    let identifier: BoardID

    func load(in container: ModuleContainer) {
        container.registerBoard(identifier) { id in
            NoBoard(identifier: identifier)
        }
    }
}
