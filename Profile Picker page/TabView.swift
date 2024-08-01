//
//  TabView.swift
//  Profile Picker page
//
//  Created by DPI Student 054 on 7/8/24.
//


import SwiftUI

struct MyTabView: View { // Rename struct to avoid conflict
    
    var body: some View {
        
        
        TabView {
            
            
            NavigationStack {
                ContentView()
                
            }
            
            .tabItem {
                Label("Home", systemImage: "house")
                Label("Home", systemImage:"house.fill")
                    .foregroundStyle(.white)
                    .foregroundColor(Color("AccentColor"))
                
                
            }
            
            Text("Second view")
            
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                        .foregroundStyle(.white)
                        .foregroundColor(Color("AccentColor"))
                }
            
            Text ("Third view")
            
                .tabItem {
                    Label("Game", systemImage: "gamecontroller")
                }
            Text ("Fourth view")
            
                .tabItem {
                    Label("Chat", systemImage: "pencil")
                }
        }
        
    }
}

struct MyTabView_Previews: PreviewProvider {
  static var previews: some View {
    MyTabView() // Use the defined struct name
  }
}







