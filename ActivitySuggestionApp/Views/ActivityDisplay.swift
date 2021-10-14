//
//  ActivityDisplay.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-13.
//

import SwiftUI

struct ActivityDisplay: View {
    
    var body: some View {
        
        
        ForEach(suggestedActivity.dummyData, id: \.activity) { item in
                
            
            
                VStack {
                    
                    
                    HStack {
                        Image(systemName: "play.circle")
                            .font(.system(size: 15, weight: .black))
                        Text(item.activity)
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



struct ActivityDisplay_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDisplay()
    }
}
