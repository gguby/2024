//
//  OnlyApp.swift
//  Only
//
//  Created by wsjung on 6/4/24.
//

import SwiftUI
import SwiftData

@main
struct OnlyApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Profile.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
