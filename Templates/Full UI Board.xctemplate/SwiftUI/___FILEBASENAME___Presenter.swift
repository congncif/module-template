//
//  ___FILENAME___
//  ___TARGETNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Compatible with Boardy 1.55.1 or later
//

import Foundation

/// Use for updating SwiftUI State
final class ___VARIABLE_moduleName___ViewState: ObservableObject {
    @Published fileprivate(set) var text: String = "___VARIABLE_moduleName___ Content View"

    init(input _: ___VARIABLE_moduleName___Input) {}
}

final class ___VARIABLE_moduleName___Presenter: XXXPresentable {
    private let state: ___VARIABLE_moduleName___ViewState

    init(state: ___VARIABLE_moduleName___ViewState) {
        self.state = state
    }

    func mapModel(event: ___VARIABLE_moduleName___ModelEvent) {
        switch event {
        case let .newText(string):
            state.text = string
        }
    }
}

// MARK: - Private methods

private extension ___VARIABLE_moduleName___Presenter {}
