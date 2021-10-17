//
//  PriceView.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-16.
//

import SwiftUI

struct PriceView: View {
    
    var price: Double
   
    var body: some View {
        VStack {
            
            Text("Price:")
                .font(.title3)
                .bold()
            
            HStack {
                
                Image(systemName: "bitcoinsign.circle")
                    .font(.system(size: 12, weight: .black))
                Text("\(price)")
                    .font(.headline)
            }
        }
        
        .font(.subheadline)
        .foregroundColor(.black)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 5)
        }
        .padding(.leading, 5)
        .padding(.trailing, 15)
        .foregroundColor(.white)
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(price: 0.0)
    }
}
