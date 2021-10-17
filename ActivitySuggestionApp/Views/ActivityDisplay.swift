//
//  ActivityDisplay.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-13.
//

import SwiftUI

struct ActivityDisplay: View {
    
    var activity: String
    
    var body: some View {
        
        VStack {
            
            
            VStack {
                
                
                HStack {
                    Image(systemName: "play.circle")
                        .font(.system(size: 15, weight: .black))
                    Text(activity)
                        .font(.headline)
                    
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
        
        
    }
}
