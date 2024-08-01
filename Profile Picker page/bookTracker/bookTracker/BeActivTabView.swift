//
//  BeActivTabView.swift
//  bookTracker
//
//  Created by DPI Student 054 on 7/15/24.
//

import SwiftUI

struct BeActivTabView: View {
    @EnvironmentObject var manager: BookManager
    @State var selectedTab = "Home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                }
                .environmentObject(manager)
            
            ContentView()
                .tag("content")
                .tabItem {
                    Image(systemName: "person")
                }
        }
    }
}

struct BeActivTabView_Previews: PreviewProvider {
    static var previews: some View {
        BeActivTabView()
    }
}
