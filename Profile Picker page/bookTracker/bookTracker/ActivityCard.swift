//
//  ActivityCard.swift
//  bookTracker
//
//  Created by DPI Student 054 on 7/15/24.
//

import SwiftUI

struct Activity {
    let title: String
    let subtitle: String
    let image: String
    let amount: String
}

struct ActivityCard: View {
    @State var activity: Activity
    var body: some View {
        
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
        
            VStack(spacing: 20) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Activity.title")
                        .font(.system(size: 16))
                    
                    Text(activity.subtitle)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: activity.image)
                    .foregroundColor(.green)
            }
            .padding()
            
            Text(activity.amount)
                .font(.system(size: 24))
          }
        
        }
    }
}

struct ActivityCard_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCard(activity: Activity(title: "Daily steps", subtitle: "Goal: 10,000", image: "book.pages", amount: "6,545"))
    }
}
