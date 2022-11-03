//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Boardy
import Foundation
import ___VARIABLE_moduleName___IO

public struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    public let service: ___VARIABLE_moduleName___ModulePlugin.ServiceType

    public init(service: ___VARIABLE_moduleName___ModulePlugin.ServiceType) {
        self.service = service
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer

        let continuousProducer = BoardProducer(externalProducer: mainProducer, registrationsBuilder: { producer in
            // BoardRegistration
        })

        switch service {
        case .default:
            mainProducer.registerBoard(service.identifier) { identifier in
                RootBoardFactory.make(identifier: identifier, producer: continuousProducer)
            }
        }
    }

    /// Each service is equivalent to one entry point
    public enum ServiceType {
        case `default`

        public var identifier: BoardID {
            switch self {
                case .default:
                    return <#identifier#>
            }
        }
    }
}

extension ___VARIABLE_moduleName___ModulePlugin {
    public static var bundledPlugins: [ModulePlugin] {
        return [
            ___VARIABLE_moduleName___ModulePlugin(service: .default),
        ]
    }
}
