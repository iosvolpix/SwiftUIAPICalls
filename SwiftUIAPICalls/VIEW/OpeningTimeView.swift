//
//  OpeningTimeView.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 27/06/22.
//

import SwiftUI

struct OpeningTimeView: View {
    @State private var openingTime = [OpeningTime]()
    
    var body: some View {
        List(openingTime, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }
    }
}

struct OpeningTimeView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningTimeView()
    }
}
