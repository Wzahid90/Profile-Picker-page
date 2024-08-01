//
//  idk.swift
//  copyTwo
//
//  Created by DPI Student 054 on 7/23/24.
//

import SwiftUI

struct idk: View {
    private var listOfCountry = ["France", "Germany", "Italy", "Spain"] // Replace with your actual data
    @State var searchText = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(countries, id: \.self) { country in
                    NavigationLink(destination: DetailView(country: country)) { // Pass country data
                        HStack {
                            Text(country.capitalized) // Display country name capitalized
                            Spacer()
                            Image(systemName: "book")
                                .foregroundColor(Color("AccentColor").opacity(0.8))
                        }
                        .padding()
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Library")
        }
    }

    var countries: [String] {
        listOfCountry.filter { $0.lowercased().contains(searchText.lowercased()) } // Filter based on lowercased search text
    }
}

struct DetailView: View {
    let country: String

    var body: some View {
        Text("Details for \(country)") // Display country details in DetailView
    }
}

struct idk_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
