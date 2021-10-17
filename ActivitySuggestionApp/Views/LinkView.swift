//
//  LinkView.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-14.
//

import SwiftUI

struct LinkView: View {
    
    var link: String
    
    var body: some View {
        HStack{
            Image(systemName: "safari")
                .font(.system(size: 15, weight: .black))
            if !link.isEmpty {
                Link("See more", destination: URL(string: "\(link)")!)
            } else {
                Text("No Link Available")
            }
        }
        .font(.headline)
        .foregroundColor(.black)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 5)
        }
        .padding(.horizontal, 15)
        .foregroundColor(.white)
    }
}
