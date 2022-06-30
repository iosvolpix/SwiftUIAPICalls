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
                    Image(String(place.id))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 156, height: 208, alignment: .leading)
                    Text(place.name)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .frame(width: 130, alignment: .leading)
                        .foregroundColor(.blue)
                        .padding(20)
                    Text(place.type)
                        .font(.subheadline)
                        .frame(width: 130, alignment: .leading)
                        .foregroundColor(.gray)
                        .padding(10)
                } // VStack
            } // HStack
            .background(Color.gray.opacity(0.09).edgesIgnoringSafeArea(.all))
            .cornerRadius(20)
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
