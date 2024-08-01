//
//  HomeView.swift
//  bookTracker
//
//  Created by DPI Student 054 on 7/15/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var manager: BookManager
    var body: some View {
        
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                ActivityCard(activity: Activity(title: "Daily steps", subtitle: "Goal: 10,000", image: "book.pages", amount: "6,545"))
                
                ActivityCard(activity: Activity(title: "Daily steps", subtitle: "Goal: 10,000", image: "book.pages", amount: "6,545"))
            }
            .padding(.horizontal)
        }
        .onAppear {
            manager.fetchTodaySteps()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
