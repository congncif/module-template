//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.54 or later
//

import Boardy
import Foundation

public struct ___TARGETNAME___ServiceMap {
    let mainboard: FlowMotherboard
}

public extension ServiceMap {
    var mod___TARGETNAME___: ___TARGETNAME___ServiceMap {
        ___TARGETNAME___ServiceMap(mainboard: mainboard)
    }
}
