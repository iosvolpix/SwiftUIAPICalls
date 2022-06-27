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
    let schedule: [OpeningTime]
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
    let closed: String
}


func fetch() async {
    guard URL(string: "https://hotmart-mobile-app.herokuapp.com/locations/1") != nil else {
        print("Invalid URL")
        return
    }
    
}
