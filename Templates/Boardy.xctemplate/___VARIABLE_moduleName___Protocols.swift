//
//  ___VARIABLE_moduleName___Protocols.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___Controller: UIViewController {}

protocol ___VARIABLE_moduleName___Delegate: AnyObject {}

protocol ___VARIABLE_moduleName___Buildable {
    func build(withDelegate delegate: ___VARIABLE_moduleName___Delegate?) -> ___VARIABLE_moduleName___Controller
}
