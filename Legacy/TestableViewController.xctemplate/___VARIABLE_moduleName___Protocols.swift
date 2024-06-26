//
//  ___VARIABLE_moduleName___Protocols.swift
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import UIKit

protocol ___VARIABLE_moduleName___Controller: UIViewController {
    var delegate: ___VARIABLE_moduleName___Delegate? { get set }
}

protocol ___VARIABLE_moduleName___Delegate: AnyObject {}

protocol ___VARIABLE_moduleName___Buildable {
    func build() -> ___VARIABLE_moduleName___Controller
}
