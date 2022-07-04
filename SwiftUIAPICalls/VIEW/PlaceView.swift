//
//  PlaceView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 28/06/22.
//

import SwiftUI
struct PlaceView: View {
    
    @StateObject var placeAPI = PlaceAPI()
    
    private let id: Int // Id do Place que vamos carregar na api
    
    var place: Place? {
        placeAPI.place
    }
    
    
    init(id: Int) {
        self.id = id
    }
    
    var body: some View {
        ScrollView {
            getView(for: place) // Retorna a view somente depois que recebe o place
        } //ScrollView
        .navigationViewStyle(.automatic)
        .onAppear()
        {
            placeAPI.fetch(id: id)
        }
    }
    
    @ViewBuilder
    private func getView(for place: Place?) -> some View {
        if let place = place {
            // Quando carregado mostra essa view
            HStack {
                VStack {
                    Image(String(place.id)) // IMAGEM
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(y: -250)

                    Text(place.name) // NOME PRICINPAL
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .frame(width: 350, alignment: .leading)
                        .offset(y: -250)
                        .padding()
             
                    Text(place.about) // SOBRE
                        .font(.subheadline)
                        .offset(y: -250)
                        .padding()
                        .foregroundColor(.gray)
                
                    
                    HStack {
                    Image(systemName: "phone.fill")
                            .offset(y: -250)
                            .foregroundColor(.blue)
                            .frame(width: 100, alignment: .leading)
                        Text(place.phone) // TELEFONE
                            .font(.subheadline)
                            .frame(width: 250, alignment: .leading)
                            .offset(y: -250)
                            .padding()
                            
                    }
                    HStack {
                    Image(systemName: "map.fill")
                            .offset(y: -250)
                        .foregroundColor(.blue)
                        Text(place.adress) // ENDEREÇO
                            .font(.subheadline)
                            .offset(y: -250)
                            .padding()
                       
                    }
                        
                    HStack {
                    Image(systemName: "clock.fill")
                            .offset(y: -250)
                        .foregroundColor(.blue)
                        Text(place.adress) // ENDEREÇO
                            .font(.subheadline)
                            .offset(y: -250)
                            .padding()
                       
                
                    }
            
                    
                    
                    
                    HStack {
                        VStack {
                    HStack {
                            Image("f1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 150, alignment: .leading)
                                .clipShape(Circle())
                  
                        
                            HStack {
                                VStack {
                            Text("Fantástico!!")
                                .fontWeight(.bold)
                                .frame(width: 200, alignment: .leading)
                                .foregroundColor(.blue)
                                .padding(1)
                                Text("Tortas deliciosas. Os waffles também estavam muito bons. Equipe muito atenciosa")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 200, alignment: .leading)
                                .foregroundColor(.gray)
                                
                                }
                            
                    }
                    }.offset(y: -200)
                            HStack {
                                    Image("f2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 150, alignment: .leading)
                                        .clipShape(Circle())
                    
                                    HStack {
                                        VStack {
                                    Text("Café da manhã delicoso")
                                        .fontWeight(.bold)
                                        .frame(width: 200, alignment: .leading)
                                        .foregroundColor(.blue)
                                        .padding(1)
                                        Text("Nós fomos para o brunch e estava realmente delicioso. Pães, ovos, café sucos naturais. Não é muito barato mas vale a pena")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 200, alignment: .leading)
                                        .foregroundColor(.gray)
                                        
                                        }
                                    }
                                
                            
                            }.offset(y: -200)
                            HStack {
                                    Image("f3")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 150, alignment: .leading)
                                        .clipShape(Circle())
                    
                                    HStack {
                                        VStack {
                                    Text("Delicoso")
                                        .fontWeight(.bold)
                                        .frame(width: 200, alignment: .leading)
                                        .foregroundColor(.blue)
                                        .padding(1)
                                        Text("Delicioso. Não é muito barato mas vale a pena")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 200, alignment: .leading)
                                        .foregroundColor(.gray)
                                        
                                        }
                                    }
                                
                            
                            }.offset(y: -200)
                        }// VSTACK
                    }
                // HSTACK
                    
                } // VStack
            } // HStack
            .padding()
        } else {
            // Enquanto não carregar mostra esse texto
            Text("Loading")
        }
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView(id: .zero)
    }
}
