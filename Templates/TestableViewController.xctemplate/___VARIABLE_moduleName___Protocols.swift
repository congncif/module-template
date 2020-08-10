//
//  ___VARIABLE_moduleName___ViewController.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___Controller: UIViewController {
    var delegate: ___VARIABLE_moduleName___Delegate? { get set }
}

protocol ___VARIABLE_moduleName___Delegate: AnyObject {}

protocol ___VARIABLE_moduleName___Buildable {
    func build() -> ___VARIABLE_moduleName___Controller
}
