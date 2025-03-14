//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import UIKit

struct ___VARIABLE_moduleName___Builder: ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?, input: ___VARIABLE_moduleName___Input) -> ___VARIABLE_moduleName___Controllable {
        let controller = ___VARIABLE_moduleName___Controller(input: input)
        controller.delegate = delegate
        return controller
    }
}
