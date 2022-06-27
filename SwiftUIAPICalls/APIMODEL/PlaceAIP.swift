//
//  PlaceAIP.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 27/06/22.
//

import Foundation
import SwiftUI

struct LocationPlace: Hashable, Codable {
    let name: String
    let review: Double
    let type: String
    let id: Int
    let about: String
}


struct Place: Hashable, Codable {
    var listLocations1: [LocationPlace] = []
}


class PlaceView: ObservableObject {
    @Published var place = Place()
    
    func fetch() {
        guard let url = URL(string: "https://hotmart-mobile-app.herokuapp.com/locations/1") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
              return
            } // Convert to JSON
            do {
                let food = try JSONDecoder().decode(Place.self, from: data)
                
                DispatchQueue.main.async {
                    self?.place = food
                }
            }
            catch {
                print(error)
            }
            }
        
        task.resume()
    }// func
    
}//class

