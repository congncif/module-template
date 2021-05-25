//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import IDMCore
import ModuleX
import ViewStateCore

/**
 * NOTE: Convenience always comes with limitations. 
 * Using Storyboard Segue & Dependency Bridge means you are dealing with Internal Routing.
 * If you would like to strongly modularize, you should use Builder & Router instead.
 **/

/// Come from outside

public protocol ___VARIABLE_moduleName___Module: ___VARIABLE_moduleName___InputProtocol {
    func connect(output: ___VARIABLE_moduleName___OutputProtocol)
    func connect(router: ___VARIABLE_moduleName___RouterProtocol)

    func inject(integrator: ___VARIABLE_moduleName___AbstractIntegrator)
}

public protocol ___VARIABLE_moduleName___ModuleInterface: ModuleInterface {
    var moduleController: ___VARIABLE_moduleName___Module { get }

    func pair(with moduleController: ___VARIABLE_moduleName___Module)
}

extension ___VARIABLE_moduleName___ModuleInterface where Self: ___VARIABLE_moduleName___Module {
    public var moduleController: ___VARIABLE_moduleName___Module {
        return self
    }
}

public protocol ___VARIABLE_moduleName___BuilderProtocol {
    func build(output: ___VARIABLE_moduleName___OutputProtocol?) -> ___VARIABLE_moduleName___ModuleInterface
}

extension ___VARIABLE_moduleName___BuilderProtocol {
    public func build() -> ___VARIABLE_moduleName___ModuleInterface {
        return build(output: nil)
    }
}

/// In/Out

/// Declare methods come in from outside module
public protocol ___VARIABLE_moduleName___InputProtocol: AnyObject {}

/// Declare methods call back to previous module
public protocol ___VARIABLE_moduleName___OutputProtocol {}

/// Declare methods go out to next module
public protocol ___VARIABLE_moduleName___RouterProtocol {
    var sourceModule: ___VARIABLE_moduleName___ModuleInterface? { get }

    func backToPrevious()
}

public protocol ___VARIABLE_moduleName___RouterFactoryProtocol {
    func getRouter(sourceModule: ___VARIABLE_moduleName___ModuleInterface) -> ___VARIABLE_moduleName___RouterProtocol
}

/// Internal

protocol ___VARIABLE_moduleName___ViewActionDelegate: AnyObject {
    func activate()
}

protocol ___VARIABLE_moduleName___ViewProtocol: ViewStateSubscriber {
    var actionDelegate: ___VARIABLE_moduleName___ViewActionDelegate? { get }
}

protocol ___VARIABLE_moduleName___ControllerProtocol {
    var output: ___VARIABLE_moduleName___OutputProtocol? { get }
    var router: ___VARIABLE_moduleName___RouterProtocol? { get }

    var presenter: ___VARIABLE_moduleName___PresenterProtocol! { get }
    var integrator: ___VARIABLE_moduleName___AbstractIntegrator! { get }

    /// Declare methods to work internal module
}

protocol ___VARIABLE_moduleName___PresenterProtocol {
    var actionDelegate: ___VARIABLE_moduleName___ViewActionDelegate? { get }
    var errorHandler: ErrorHandlingProtocol { get }

    /// Connections
    func openConnectionToView(_ view: ___VARIABLE_moduleName___ViewProtocol)

    /// Original Data

    /// Data Loading
    var dataLoadingHandler: LoadingProtocol! { get }

    var dataResponseHandler: DataProcessor<___VARIABLE_moduleName___ResponseModel> { get }

    /// State Accessibilities

    /// State Updates
}
