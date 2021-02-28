//
//  HopOnApp.swift
//  HopOn
//
//  Created by Griffin Tang on 2/25/21.
//

import SwiftUI
import Firebase
@main
struct HopOnApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        
        WindowGroup {
            
            ContentView(rating: Rating())
            
        }
    }
}
