//
//  TabBarView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 01/07/22.
//

import SwiftUI

struct TabBarView: View {
    @State private var rating1 = 1
    var body: some View {
     
        TabView {
            
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Location")
                .tabItem {
                    Image(systemName: "map")
                    Text("Location")
                }
            Text("teste")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                
        }
        
        
        
        
    } // Var body

}// struct

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
