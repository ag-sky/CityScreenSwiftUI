//
//  CityDetails.swift
//  CityDetails
//
//  Created by Akash gupta on 28/10/24.
//

import Foundation

struct CityDetails: Codable, Identifiable {
    let id : Int
        let name : String
        let population : Int
        let area : Double
        let country : String
}
