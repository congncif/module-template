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

public struct ___VARIABLE_moduleName___IDExtensions {
    public init() {}
}

public struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    public let identifier: BoardID
    public let identifierExtensions: ___VARIABLE_moduleName___IDExtensions

    public init(identifier: BoardID, identifierExtensions: ___VARIABLE_moduleName___IDExtensions = ___VARIABLE_moduleName___IDExtensions()) {
        self.identifier = identifier
        self.identifierExtensions = identifierExtensions
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer
        mainProducer.registerBoard(identifier) { identifier in
            let producer = ___VARIABLE_moduleName___BoardProducer(externalProducer: mainProducer, identifierExtensions: identifierExtensions)
            let mainboard = Motherboard(identifier: "<#domain.root.main#>", boardProducer: producer)
            return RootBoard(identifier: identifier, continuousBoard: mainboard)
        }
    }
}
