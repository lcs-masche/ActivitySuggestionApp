//
//  priceAndAccesibility.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-14.
//

import SwiftUI

struct priceAndAccesibility: View {
    var body: some View {
        
        ForEach(suggestedActivity.dummyData, id: \.activity) { item in
            
            
            HStack {
                
                VStack {
                    
                    Text("Accessibility:")
                        .font(.title3)
                        .bold()
                    
                    
                    HStack {
                        
                        Image(systemName: "figure.walk")
                            .font(.system(size: 10, weight: .black))
                        Text(item.accessibility)
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
                
                
                
                VStack {
                    
                    Text("Peice:")
                        .font(.title3)
                        .bold()
                    
                    
                    HStack {
                        
                        Image(systemName: "figure.walk")
                            .font(.system(size: 10, weight: .black))
                        Text("\(item.price)")
                            .font(.headline)
                            .rounded()
                        
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
    }
}

struct priceAndAccesibility_Previews: PreviewProvider {
    static var previews: some View {
        priceAndAccesibility()
    }
}
