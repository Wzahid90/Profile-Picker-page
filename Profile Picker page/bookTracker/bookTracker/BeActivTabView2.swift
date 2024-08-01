//
//  BeActivTabView.swift
//  bookTracker
//
//  Created by DPI Student 054 on 7/15/24.
//

import SwiftUI

struct BeActivTabView: View {
    @State var selectedTab = "home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                }
        }
    }
}

struct BeActivTabView_Previews: PreviewProvider {
    static var previews: some View {
        BeActivTabView()
    }
}
