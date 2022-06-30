//
//  PlaceAPI.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 27/06/22.
//

import Foundation

struct Place: Hashable, Codable {
    let name: String
    let review: Double
    let type: String
    let id: Int
    let about: String
    let schedule: [Schedule]
    let phone: String
    let adress: String
}

struct Schedule: Hashable, Codable {
    let sunday: OpeningTime
    let monday: OpeningTime
    let tuesday: OpeningTime
    let wednesday: OpeningTime
    let thursday: OpeningTime
    let friday: OpeningTime
    let saturday: OpeningTime
}

struct OpeningTime: Hashable, Codable {
    let open: String
    let close: String

}

class PlaceAPI: ObservableObject {
    @Published var place: Place?
    
    func fetch(id: Int) { // ID passado para carregar o place
        guard let url = URL(string: "https://hotmart-mobile-app.herokuapp.com/locations/\(id)") // Colocamos o id na url
        else {
            print("Invalid URL")
            return
        }
        
        // MAKE THE REQUEST = FAÇA O PEDIDO
        let task = URLSession.shared.dataTask(with: url) {[] data, _, error in
            guard let data = data, error == nil else {
                return
            } // CONVERT TO JSON = CONVERTER PARA JSON
            do {
                let place = try JSONDecoder().decode(Place.self, from: data)
                DispatchQueue.main.async {
                    self.place = place
                }
            }
            catch {
                print(error)
            }
        }
        
        task.resume()
    } // func
} // struct
