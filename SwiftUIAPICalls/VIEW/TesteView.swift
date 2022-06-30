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
                    .aspectRatio(contentMode: .fit)
                    .offset(y: -150)
                    
                    
                    
                Text("Obrigatorio")
                    .font(.title)
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .padding()
                
                Text("Comentario")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding()
                
            }// VStack
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 24.0))
            .shadow(radius: 8)
            .padding()
        } // HStack
        
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
