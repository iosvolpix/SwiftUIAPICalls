//
//  ContentView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 21/06/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State private var present: Bool = false
    @State private var id: Int = .zero
    
    var body: some View {
        
        NavigationView {
            
            // APRESENTA A PLACEVIEW QUANDO PRESENT FOR TRUE
            // PASSA O ID DO PLACE SELECIONADO PARA A PLACE VIEW
            NavigationLink(destination: PlaceView(id: id), isActive: $present) {
                
                ScrollView {
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                        
                        ForEach(viewModel.food.listLocations, id: \.self) { location in
                            
                            HStack {
                                VStack {
                                    
                                    Image(String(location.id))
                                        .resizable()
                                        .frame(width: 200, height: 200)
                                    
                                    
                                    Text(location.name)
                                        .font(.headline)
                                        .frame(width: 150, alignment: .leading)
                                    
                                    Text(location.type)
                                        .font(.subheadline)
                                        .frame(width: 150, alignment: .leading)
                                        .foregroundColor(.gray)
                                        .padding()
                                    
                                    
                                }// VStack
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 24.0))
                                .shadow(radius: 5)
                                
                            } // HStack
                            .navigationBarTitle("HOME")
                            .padding()
                            .onTapGesture { // CAPTURA O TOQUE NO CARD
                                id = location.id
                                present = true
                            }
                            
                            
                            
                            
                        }
                    } //ForEach
                }//ScrollView
            }
            
        }// NavigationView
        .navigationTitle("Home")
        .onAppear() {
            viewModel.fetch()
        }
        .background {
            
        }
    }// var body
}// struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

