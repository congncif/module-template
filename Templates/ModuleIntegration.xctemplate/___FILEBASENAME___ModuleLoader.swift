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
            let producer = ___VARIABLE_moduleName___BoardProducer()
            let mainboard = Motherboard(identifier: "<#domain.root.main#>", boardProducer: producer)
            return RootBoard(identifier: identifier, continuousBoard: mainboard)
        }
    }
}
