//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.47 or later
//

import Foundation
import UIKit

final class ___VARIABLE_moduleName___Segue: UIStoryboardSegue {}

extension ___VARIABLE_moduleName___Segue {
	public override func perform() {
        super.perform()
    }
}

extension ___VARIABLE_moduleName___Segue {
//	var target: <#TargetModuleInterface#>? {
//		return destination as? <#TargetModuleInterface#>
//  }

    var current: ___VARIABLE_moduleName___ModuleInterface? {
        return source as? ___VARIABLE_moduleName___ModuleInterface
    }
}