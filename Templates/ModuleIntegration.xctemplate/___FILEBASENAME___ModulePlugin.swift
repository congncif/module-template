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

public struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    public let identifier: BoardID

    public init(identifier: BoardID) {
        self.identifier = identifier
    }

    public func apply(for main: MainComponent) {
        main.registerBoard(identifier) { id in
            let producer = ___VARIABLE_moduleName___BoardProducer()
            let mainboard = Motherboard(identifier: "<#domain.root.main#>", boardProducer: producer)
            return RootBoard(identifier: id, continuousBoard: mainboard)
        }
    }
}
