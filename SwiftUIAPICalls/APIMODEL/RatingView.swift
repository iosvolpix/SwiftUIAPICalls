//
//  StarReview.swift
//  SwiftUIAPICalls
//
//  Created by Angor Volpi Silva Rezende on 21/06/22.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    
    @Binding var label: String
    
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        
        HStack {
            

            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
            if label.isEmpty == false {
                Text(label)
            }
            
        } // HStack
    }
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3), label: .constant("3.2"))
    }
}
