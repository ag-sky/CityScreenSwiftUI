//
//  NetworkManager.swift
//  CityDetails
//
//  Created by Akash Gupta on 29/10/24.
//

import Foundation
import Combine

class NetworkManager{
    func fetchCities() -> AnyPublisher<[CityDetails],Error> {
        let url = URL(string: "http://localhost:8080/cities")!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [CityDetails].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
