//
//  TesteView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 30/06/22.
//

import SwiftUI

struct TesteView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                Image("2") // IMAGEM
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: -250)

                Text("Obrigatorio") // NOME PRICINPAL
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .frame(width: 150, alignment: .leading)
                    .offset(y: -250)
                    .padding()
                
                Text("Sobre") // SOBRE
                    .font(.subheadline)
                    .offset(y: -250)
                    .padding()
                
                HStack {
                Image(systemName: "phone.fill")
                        .offset(y: -250)
                Text("Telefone") // TELEFONE
                    .font(.subheadline)
                    .offset(y: -250)
                    .padding()
                }
                HStack {
                Image(systemName: "map.fill")
                        .offset(y: -250)
                Text("Endereco") // ENDEREÇO
                    .font(.subheadline)
                    .offset(y: -250)
                    .padding()
                }
                
            }// VStack
         
        } // HStack
        
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
