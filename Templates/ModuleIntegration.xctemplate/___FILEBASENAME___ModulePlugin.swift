//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Boardy
import Foundation
import ___VARIABLE_moduleName___IO

public struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    // public var identifier: BoardID {
    //     switch serviceType {
    //     case let .some(identifier):
    //         return identifier
    //     }
    // }
    public let identifier: BoardID
    public let identifierExtensions: ___VARIABLE_moduleName___ModulePlugin.IDExtensions

    public init(identifier: BoardID = ___VARIABLE_moduleName___Namespace.default, identifierExtensions: ___VARIABLE_moduleName___ModulePlugin.IDExtensions = .init()) {
        self.identifier = identifier
        self.identifierExtensions = identifierExtensions
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer
        let externalIDs = identifierExtensions
        
        mainProducer.registerBoard(identifier) { [unowned mainProducer] identifier in
            let mainboard = Motherboard(identifier: "___VARIABLE_moduleName___.root.main", externalProducer: mainProducer) { producer in
                // <#BoardRegistration#>
            }
            return RootBoard(identifier: identifier, continuousBoard: mainboard)
        }
    }

    public struct IDExtensions {
        public init() {}
    }

    // public enum ServiceType {
    //     case some(BoardID)
        
    //     static var some: ServiceType {
    //         .some("someID")
    //     }
    // }
}
