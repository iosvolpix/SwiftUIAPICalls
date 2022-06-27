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
    
    // GET, POST , PUT , DELETE, etc. = PEGUE, PUBLICAR , EXCLUIR, etc.
    func fetch() {
        guard let url = URL(string: "https://hotmart-mobile-app.herokuapp.com/locations") else {
            return
        }
        
        // MAKE THE REQUEST = FAÇA O PEDIDO
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
              return
                
                
            } // CONVERT TO JSON = CONVERTER PARA JSON
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
        
    }// func
    
}//class

