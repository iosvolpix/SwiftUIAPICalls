//
//  ContentView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 21/06/22.
//

import SwiftUI

struct ContentView: View {
   @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.food.listLocations, id: \.self) { location in


                    HStack {
                        ScrollView{
                              HStack {
                              VStack {
                                  Image(String(location.id))
                                      .resizable()
                                      .aspectRatio(contentMode: .fill)
                                      .frame(width: 200, height: 150, alignment: .leading)
                                      .clipShape(Circle())
    
                                  Text(location.name)
                                      .bold()
                                      .font(.subheadline)
                                      .fontWeight(.bold)
                                      .frame(width: 130, alignment: .leading)
                                      .foregroundColor(.blue)
                                  
                                  Text(location.type)
                                          .font(.subheadline)
                                          .frame(width: 130, alignment: .leading)
                                          .foregroundColor(.gray)
                              }
                              }//
                        }
                
                      } //hstack
                    }//ForEach
            
                    
                }//List
            }// Navigacao
            .navigationTitle("Home")
            .onAppear() {
                viewModel.fetch()
            }
        }// var body
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
