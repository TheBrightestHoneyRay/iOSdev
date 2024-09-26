//
//  assignment3App.swift
//  assignment3
//
//  Created by Балнур Бектасова on 25.09.2024.
//

import SwiftUI
import SwiftData

@main
struct assignment3App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        .modelContainer(for: Item.self)
    }
}
