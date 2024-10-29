//
//  ContentView.swift
//  CityDetails
//
//  Created by Akash Gupta on 28/10/24.
//

import SwiftUI

struct CityView: View {
    @StateObject var viewmodel = CityViewmodel()
    var body: some View {
        NavigationView{
            List(viewmodel.cities){ city in
                VStack(alignment: .leading){
                    Text(city.name)
                        .font(.headline)
                    
                    Text("Population: \(city.population), Area: \(city.area) km², Country: \(city.country)")
                                        .font(.subheadline)
                }
                .navigationTitle("Cities")
            }
        }
    }
}

#Preview {
    CityView()
}
