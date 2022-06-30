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
                
                Image("3")
                    .resizable()
                    .scaledToFit()
                
                Text("Obrigatorio")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(width: 150, alignment: .leading)
                    .foregroundColor(.gray)
                    .padding()
                
                Text("Comentario")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .frame(width: 150, alignment: .leading)
                    .foregroundColor(.gray)
                    .padding()
                
            }// VStack
         
        } // HStack
        
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
