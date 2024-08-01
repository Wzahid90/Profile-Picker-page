//
//  ContentView.swift
//  copyTwo
//
//  Created by DPI Student 054 on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    private var listOfCountry = countryList
    @State var searchText = ""
    
    var body: some View {
        ///NavigationView {
            List {
                ForEach(countries, id: \.self) { country in
                   // NavigationLink(destination: DetailView(Country: //Country)
                        HStack {
                            Text(country.capitalized)
                            Spacer()
                            Image(systemName: "book")
                                .foregroundColor(Color("AccentColor").opacity(0.8))
                        }
                        
                        .padding()
                    }
            //      }
                }
                .searchable(text: $searchText)
                .navigationTitle("Library")
            }
            
        //}
        
        
        // Filter countries
        var countries: [String] {
            // Make countries lowercased
            let lcCountries = listOfCountry.map { $0.lowercased() }
            
            return searchText == "" ? lcCountries : lcCountries.filter { $0.contains(searchText.lowercased()) }
        }
        
}

//#Preview{
 //   ContentView()
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

