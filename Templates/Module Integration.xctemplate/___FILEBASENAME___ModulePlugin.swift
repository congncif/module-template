//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Boardy
import Foundation
import ___VARIABLE_moduleName___IO

struct ___VARIABLE_moduleName___ModulePlugin: ModulePlugin {
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

    let service: ___VARIABLE_moduleName___ModulePlugin.ServiceType

    init(service: ___VARIABLE_moduleName___ModulePlugin.ServiceType) {
        self.service = service
    }

    var identifier: BoardID {
        service.identifier
    }
}

public struct ___VARIABLE_moduleName___LauncherPlugin: LauncherPlugin {
    public init() { /**/ }

    public func prepareForLaunching(withOptions options: MainOptions) -> ModuleComponent {
        ModuleComponent(
            modulePlugins: [
                ___VARIABLE_moduleName___ModulePlugin(service: .default),
            ],
            urlOpenerPlugins: []
        )
    }
}
