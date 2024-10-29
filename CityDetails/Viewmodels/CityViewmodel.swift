//
//  CityViewmodel.swift
//  CityDetails
//
//  Created by Akash Gupta on 29/10/24.
//

import Foundation
import Combine

class CityViewmodel: ObservableObject {
    @Published var cities : [CityDetails] = []
    private var cancellables  = Set<AnyCancellable>()
    private var cityRepo = CityRepo()
    
    
    init(){
        fetchCities()
    }
    
    func fetchCities() {
        cityRepo.getcities()
            .sink(receiveCompletion: { _ in }) { [weak self] cities in
                self?.cities = cities
            }
            .store(in: &cancellables)
    }
}
