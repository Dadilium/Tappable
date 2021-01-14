//
//  TappableTestApp.swift
//  TappableTest
//
//  Created by Antoine ROY on 14/01/2021.
//

import SwiftUI

@main
struct TappableTestApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            RocketsList()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
