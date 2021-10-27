//
//  ContentView.swift
//  TravellingDestinations
//
//  Created by Federico on 27/10/2021.
//

import SwiftUI

struct ContentView: View {
    let countries = countryList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(countries, id: \.self) { country in
                    NavigationLink(destination: Text(country)) {
                        Image(systemName: "airplane")
                        Text(country)
                    }.padding()
                }
                .navigationTitle("Destinations")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
