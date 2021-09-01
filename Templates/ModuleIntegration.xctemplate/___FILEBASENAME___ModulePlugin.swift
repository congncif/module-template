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
    public let service: ___VARIABLE_moduleName___ModulePlugin.ServiceType

    public init(service: ___VARIABLE_moduleName___ModulePlugin.ServiceType) {
        self.service = service
    }

    public func apply(for main: MainComponent) {
        let mainProducer = main.producer

        switch service {
        case .default:
            mainProducer.registerBoard(identifier) { [unowned mainProducer] identifier in
                RootBoard(
                    identifier: identifier,
                    producer: BoardProducer(
                        externalProducer: mainProducer,
                        registrationsBuilder: { producer in
                            // <#registration code#>
                        }
                    )
                )
            }
        }
    }

    public var identifier: BoardID {
        switch service {
        case let .default(identifier):
            return identifier
        }
    }

    /// Each service is equivalent to one entry point
    public enum ServiceType {
        case `default`(BoardID)
    }
}

extension ___VARIABLE_moduleName___ModulePlugin {
    public static var bundledPlugins: [ModulePlugin] {
        return [
            ___VARIABLE_moduleName___ModulePlugin(service: .default(___VARIABLE_moduleName___ID.default)),
        ]
    }
}
