//
//  CityRepo.swift
//  CityDetails
//
//  Created by Deeksha Verma on 29/10/24.
//

import Foundation
import Combine

class CityRepo{
     private var networkManager = NetworkManager()
    
    func getcities() -> AnyPublisher<[CityDetails], Error> {
        networkManager.fetchCities()
    }
}
