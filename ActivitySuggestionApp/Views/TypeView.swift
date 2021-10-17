//
//  TypeView.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-15.
//

import SwiftUI

struct TypeView: View {
    
    let type: String
    
    var body: some View {
        VStack {
            
            Text("Type:")
                .font(.title3)
                .bold()
            
            HStack {
        
                Image(systemName: "figure.walk")
                    .font(.system(size: 10, weight: .black))
                Text(type)
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

struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView(type: "Something")
    }
}
