//
//  PocketfulApp.swift
//  Pocketful
//
//  Created by Luke Wong Zhi Kiang on 30/10/2025.
//

import SwiftUI
import SwiftData

@main
struct PocketfulApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            // Models will be added here
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
