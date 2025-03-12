//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.60 or later
//

import Boardy
import Foundation
import ___VARIABLE_moduleName___

struct ___VARIABLE_moduleName___ModulePlugin: ModuleBuilderPlugin {
    /// Each service is equivalent to one entry point
    enum ServiceType: CaseIterable {
        case `default`

        var identifier: BoardID {
            return switch self {
                case .default: <#identifier#>
            }
        }
    }

    func build(with identifier: Boardy.BoardID, sharedComponent: any Boardy.SharedValueComponent, internalContinuousProducer: any Boardy.ActivatableBoardProducer) -> any Boardy.ActivatableBoard {
        switch service {
            case .default:
                <#RootBoardFactory.make(identifier: identifier, producer: internalContinuousProducer)#>
        }
    }

    func internalContinuousRegistrations(sharedComponent: any Boardy.SharedValueComponent, producer: any Boardy.ActivatableBoardProducer) -> [Boardy.BoardRegistration] {}

    let service: ___VARIABLE_moduleName___ModulePlugin.ServiceType

    var identifier: BoardID {
        service.identifier
    }
}

struct ___VARIABLE_moduleName___URLOpenerPlugin: GuaranteedURLOpenerPlugin {
    typealias Parameter = Void
    
    func willOpen(url: URL) -> URLOpeningOption<Parameter> {
        // return .yes if need to process a deep link
        return .no
    }
    
    func mainboard(_ mainboard: any FlowMotherboard, openWith parameter: Parameter) {
        // Activate corresponding board here
    }
}

public struct ___VARIABLE_moduleName___LauncherPlugin: LauncherPlugin {
    public init() { /**/ }

    public func prepareForLaunching(withOptions options: MainOptions) -> ModuleComponent {
        ModuleComponent(
            modulePlugins: ___VARIABLE_moduleName___ModulePlugin.ServiceType.allCases.map {
                ___VARIABLE_moduleName___ModulePlugin(service: $0)
            },
            urlOpenerPlugins: [
                ___VARIABLE_moduleName___URLOpenerPlugin()
            ]
        )
    }
}
