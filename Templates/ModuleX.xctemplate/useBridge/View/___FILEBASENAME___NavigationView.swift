//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit
import ViewStateCore

final class ___VARIABLE_moduleName___NavigationView: NSObject, ___VARIABLE_moduleName___ViewProtocol {
	weak var actionDelegate: ___VARIABLE_moduleName___ViewActionDelegate?
    
    @IBOutlet weak var navigationItem: UINavigationItem!
}

extension ___VARIABLE_moduleName___NavigationView: DedicatedViewStateFillable {
    func dedicatedFillingOptions(_ state: ___VARIABLE_moduleName___ViewState) -> [FillingOption] {
        // <#Configure to render View here#>
        return []
    }
}
