//
//  tracker.swift
//  Profile Picker page
//
//  Created by DPI Student 054 on 7/22/24.
//

import SwiftUI

struct tracker: View {
    var body: some View {
        ZStack {
            VStack {
                HStack (spacing: 10) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Read: 20,000 words!")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Goals: 10 Books!")
                    }
                }
                HStack (spacing: 10) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Time Spent on Ap: 110 Hours!")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Trivia Game HighScore: 5/5!")
                    }
                }
                HStack (spacing: 10) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Completed: 5/10 books!")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Hours Read: 100!")
                    }
                }
                
            }
            .padding(.all)
        }
    }
}

#Preview {
    tracker()
}
