//
//  Landsmark2_0App.swift
//  Landsmark2.0
//
//  Created by Valentina Krysak on 12.07.22.
//

import SwiftUI

@main
struct Landsmark2_0App: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
