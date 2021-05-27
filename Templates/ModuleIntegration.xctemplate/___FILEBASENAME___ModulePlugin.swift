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
        let module = ___VARIABLE_moduleName___ModuleLoader(identifier: identifier)
        module.load(in: main)
    }
}
