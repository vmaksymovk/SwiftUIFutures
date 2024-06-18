//
//  LearningSwiftUIApp.swift
//  LearningSwiftUI
//
//  Created by Влад on 5/16/24.
//

import SwiftUI

@main
struct LearningSwiftUIApp: App {
    var body: some Scene {
        let model = CounterModel()
        let presenter = CounterPresenter(count: 0, model: model)
        WindowGroup {
            ViewMVP(presenter: presenter)
        }
    }
}
