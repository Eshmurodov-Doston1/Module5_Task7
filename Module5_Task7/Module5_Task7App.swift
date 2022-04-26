//
//  Module5_Task7App.swift
//  Module5_Task7
//
//  Created by macbro on 26/04/22.
//

import SwiftUI

@main
struct Module5_Task7App: App {
    let persistenceController = PersistenceController.shared
    @StateObject var statusApp = StatusApp()
    var body: some Scene {
        WindowGroup {
            
            StartPresenScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
               
            
            // Envirement
//            StartAppScreen()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//                .environmentObject(statusApp)
        }
    }
}
