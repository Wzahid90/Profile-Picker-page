//
//  MajorView.swift
//  Profile Picker page
//
//  Created by DPI Student 054 on 7/16/24.
//

import SwiftUI

struct MajorView: View {
    private var listOfCountry = countryList
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
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
            
        }
        
        
        // Filter countries
        var countries: [String] {
            // Make countries lowercased
            let lcCountries = listOfCountry.map { $0.lowercased() }
            
            return searchText == "" ? lcCountries : lcCountries.filter { $0.contains(searchText.lowercased()) }
        }
        
    }


    struct MajorView_Previews: PreviewProvider {
        static var previews: some View {
            MajorView()
        }
    }

