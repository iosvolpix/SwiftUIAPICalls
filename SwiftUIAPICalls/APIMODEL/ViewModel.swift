//
//  ViewModel.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 21/06/22.
//

import Foundation
import SwiftUI

struct Location: Hashable, Codable {
    let name: String
    let review: Double
    let type: String
    let id: Int
}


struct Food: Hashable, Codable {
    var listLocations: [Location] = []
}


class ViewModel: ObservableObject {
    @Published var food = Food()
    
    func fetch() {
        guard let url = URL(string: "https://hotmart-mobile-app.herokuapp.com/locations") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
              return
            } // Convert to JSON
            do {
                let food = try JSONDecoder().decode(Food.self, from: data)
                
                DispatchQueue.main.async {
                    self?.food = food
                }
            }
            catch {
                print(error)
            }
            }
        
        task.resume()
    }
    
}

