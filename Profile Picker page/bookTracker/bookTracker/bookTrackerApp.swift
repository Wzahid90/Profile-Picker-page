//
//  bookTrackerApp.swift
//  bookTracker
//
//  Created by DPI Student 054 on 7/15/24.
//

import SwiftUI

@main
struct bookTrackerApp: App {
    @StateObject var manager = BookManager()
    
    var body: some Scene {
        WindowGroup {
            BeActivTabView()
                .environmentObject(manager)
        }
    }
}
