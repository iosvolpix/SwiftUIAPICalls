//
//  PlaceView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 27/06/22.
//

import SwiftUI

struct PlaceView: View {
    var body: some View {
        @StateObject var placeView = PlaceView()
         
         var body: some View {
             
             NavigationView {

                             ScrollView {
                                 
                                 LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                                     
                                 ForEach(placeView.food.listLocations, id: \.self) { location1 in
                 
                                     HStack {
                                             VStack {
                                           
                                       Image(String(location.id))
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                           .frame(width: 156, height: 208, alignment: .leading)
                                           
                                       
                                       Text(location.name)
                                           .font(.subheadline)
                                           .fontWeight(.bold)
                                           .frame(width: 130, alignment: .leading)
                                           .foregroundColor(.blue)
                                     
                                       Text(location.type)
                                           .font(.subheadline)
                                           .frame(width: 130, alignment: .leading)
                                           .foregroundColor(.gray)
                                                 
                                         
                                             }// VStack
                                     
                                     } // HStack
                                     .background(Color.gray.opacity(0.10).edgesIgnoringSafeArea(.all))
                                     .cornerRadius(20)
                                     .navigationBarTitle("HOME")
                                     
                                     
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


struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView()
    }
}
