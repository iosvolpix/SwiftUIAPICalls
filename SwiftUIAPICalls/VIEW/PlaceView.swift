//
//  PlaceView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 28/06/22.
//

import SwiftUI

struct PlaceView: View {

    @State var places = [Place]()
    
    var body: some View {
        NavigationView {

                        ScrollView {
                            
                            ForEach(places, id: \.self) { places in
            
                                HStack {
                                        VStack {
                                      
                                  Image(String(places.id))
                                      .resizable()
                                      .aspectRatio(contentMode: .fit)
                                      .frame(width: 156, height: 208, alignment: .leading)
                                    Text(places.name)
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 130, alignment: .leading)
                                        .foregroundColor(.blue)
                                        .padding(20)
                                  
                                    Text(places.type)
                                        .font(.subheadline)
                                        .frame(width: 130, alignment: .leading)
                                        .foregroundColor(.gray)
                                        .padding(10)
                                        }// VStack
                                
                                } // HStack
                                .background(Color.gray.opacity(0.09).edgesIgnoringSafeArea(.all))
                                .cornerRadius(20)
                                .navigationBarTitle("HOME")
                                .padding()
                                
                            }
                            
                        }//ScrollView
                
        }// NavigationView
            .navigationTitle("Home")
            .onAppear()
            {
                Task {
                    await PlaceAPI().fetch()
                }
            }
        
    }
}
struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView()
    }
}
