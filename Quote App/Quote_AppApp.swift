//
//  Quote_AppApp.swift
//  Quote App
//
//  Created by Macbook on 15.06.2022.
//

import SwiftUI

@main
struct Quote_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
