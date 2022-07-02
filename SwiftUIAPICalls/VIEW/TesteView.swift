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
                    .frame(width: 250, alignment: .leading)
                    .padding()
                
                Text("Sobre") // SOBRE
                    .font(.subheadline)
                    .padding()
                
                HStack {
                Image(systemName: "phone.fill")
                Text("Telefone") // TELEFONE
                    .font(.subheadline)
                    .padding()
                }
                HStack {
                Image(systemName: "map.fill")
                Text("Endereco") // ENDEREÇO
                    .font(.subheadline)
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
