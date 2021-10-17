//
//  priceAndAccesibility.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-14.
//

import SwiftUI

struct priceAndAccesibility: View {
    

    @State var accessibility: Double
    
    var body: some View {
       
            VStack {
                Text("Accessibility:")
                    .font(.title3)
                    .bold()
                
                HStack {
                    
                    Image(systemName: "person.and.arrow.left.and.arrow.right")
                        .font(.system(size: 13, weight: .black))
                    Text(accessibility)
                        .font(.subheadline)
                }
            }
            .font(.headline)
            .foregroundColor(.black)
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
            .background {
                RoundedRectangle(cornerRadius: 5)
            }
            .padding(.leading, 15)
            .padding(.trailing, 5)
            .foregroundColor(.white)

    }
}

