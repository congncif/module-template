//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Foundation
import SwiftUI

struct ___VARIABLE_moduleName___ContentView: View {
    let interactor: ___VARIABLE_moduleName___Interactable
    let interoperator: ___VARIABLE_moduleName___ViewControllerInteroperable

    @ObservedObject var state: ___VARIABLE_moduleName___ViewState

    var body: some View {
        Text(state.text)

        Button {
            interactor.handle(action: .changeContent)
        } label: {
            Text("Change text")
        }
    }
}

/// Use for interacting with data before sending messages to outside
protocol ___VARIABLE_moduleName___Interactable {
    func didBecomeActive()
    func handle(action: ___VARIABLE_moduleName___ActionEvent)
}

enum ___VARIABLE_moduleName___ActionEvent {
    case changeContent
}
