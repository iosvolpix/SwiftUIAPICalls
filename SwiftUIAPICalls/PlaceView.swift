//
//  PlaceView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 27/06/22.
//

import SwiftUI

struct PlaceView: View {
    @StateObject var placeView = PlaceView()
    
    var body: some View {
        NavigationView {

                        ScrollView {
                            
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                                
                            ForEach(placeView.food.listLocations, id: \.self) { Place in
            
                                HStack {
                                        VStack {
                                      
                                  Image(String(listLocations1.id))
                                      .resizable()
                                      .aspectRatio(contentMode: .fit)
                                      .frame(width: 156, height: 208, alignment: .leading)

                                
                            }
                            } //ForEach
                        }//ScrollView
                
        }// NavigationView
            .navigationTitle("Home")
            .onAppear() {
                placeView.fetch()
            }
    }// var body
}// struct
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView()
    }
}
