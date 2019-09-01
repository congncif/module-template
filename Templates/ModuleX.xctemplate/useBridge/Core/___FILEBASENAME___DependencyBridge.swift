//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import ViewStateCore

protocol ___VARIABLE_moduleName___DependencyBridge {
    var presenter: ___VARIABLE_moduleName___PresenterProtocol! { get }
}

protocol ___VARIABLE_moduleName___ControllerBridgeProtocol: ___VARIABLE_moduleName___ControllerProtocol {
    var dependencyBridge: ___VARIABLE_moduleName___DependencyBridge! { get }
}

extension ___VARIABLE_moduleName___ControllerBridgeProtocol {
    var presenter: ___VARIABLE_moduleName___PresenterProtocol! {
    	return dependencyBridge.presenter
    }
}
