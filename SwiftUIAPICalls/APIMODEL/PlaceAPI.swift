//
//  PlaceAPI.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 27/06/22.
//

import Foundation
//     LUGAR
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
//     HORARIO
struct Schedule: Hashable, Codable {
    let sunday: OpeningTime
    let monday: OpeningTime
    let tuesday: OpeningTime
    let wednesday: OpeningTime
    let thursday: OpeningTime
    let friday: OpeningTime
    let saturday: OpeningTime
}
//     HORARIO DE ABERTURA
struct OpeningTime: Hashable, Codable {
    let open: String
    let closed: String

}

class PlaceAPI: ObservableObject {
@Published var place = [Place]()

func fetch() async {
    guard let url = URL(string: "https://hotmart-mobile-app.herokuapp.com/locations/1") else {
        print("Invalid URL")
        
        return
     
    }
    
// MAKE THE REQUEST = FAÇA O PEDIDO
    _ = URLSession.shared.dataTask(with: url) {[] data,  _, error in
    guard let data = data, error == nil else {
      return
        
    } // CONVERT TO JSON = CONVERTER PARA JSON
    do {
        _ = try JSONDecoder().decode(Place.self, from: data)
        
    }
    catch {
        print(error)
    }
    }
} // func
} // struct
