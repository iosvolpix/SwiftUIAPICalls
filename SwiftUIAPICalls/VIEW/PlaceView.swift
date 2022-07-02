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
                        .offset(y: -130)

                    Text(place.name) // NOME PRICINPAL
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .frame(width: 350, alignment: .leading)
                        .offset(y: -100)
                    
                    Text(place.about) // SOBRE
                        .font(.subheadline)
                        .offset(y: -100)
                        .padding()
                
                    
                    HStack {
                    Image(systemName: "phone.fill")
                            .foregroundColor(.blue)
                        Text(place.phone) // TELEFONE
                            .font(.subheadline)
                            .frame(width: 320, alignment: .leading)
                            
                            .padding()
                    }.offset(y: -100)
                        
                    HStack {
                    Image(systemName: "map.fill")
                        .foregroundColor(.blue)
                        Text(place.adress) // ENDEREÇO
                        .font(.subheadline)
                    
                        .padding()
                       
                    }.offset(y: -100)
                    
                    
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
