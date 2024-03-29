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

struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
    let service: ___VARIABLE_moduleName___ModulePlugin.ServiceType

    init(service: ___VARIABLE_moduleName___ModulePlugin.ServiceType) {
        self.service = service
    }

    func apply(for main: MainComponent) {
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
    enum ServiceType {
        case `default`

        var identifier: BoardID {
            switch self {
                case .default:
                    return <#identifier#>
            }
        }
    }
}

public struct ___VARIABLE_moduleName___LauncherPlugin: LauncherPlugin {
    public init() { /**/ }

    public var moduleComponent: ModuleComponent {
        ModuleComponent(
            modulePlugins: [
                ___VARIABLE_moduleName___ModulePlugin(service: .default),
            ],
            urlOpenerPlugins: []
        )
    }
}
