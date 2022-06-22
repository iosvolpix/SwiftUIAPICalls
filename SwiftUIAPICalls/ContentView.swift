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
            
                    
                        ScrollView{
                            
                            ForEach(viewModel.food.listLocations, id: \.self) { location in
            
                                HStack {
                                  VStack {
                                      
                                  Image(String(location.id))
                                      .resizable()
                                      .aspectRatio(contentMode: .fit)
                                      .cornerRadius(20)
                                      .frame(width: 156, height: 208, alignment: .leading)
                                      
                                  
                         
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
                                
                                
                        }
                                .background(Color.gray.opacity(0.07).edgesIgnoringSafeArea(.all))
                                .cornerRadius(20)
                                .navigationBarTitle("HOME")
                
                      } //hstack
                    }//ForEach
            
                    
                
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
