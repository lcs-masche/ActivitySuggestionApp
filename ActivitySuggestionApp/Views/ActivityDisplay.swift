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
            
            ZStack {
                
                
                LinearGradient(colors: [.red, .blue],
                               startPoint: .top,
                               endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Image(systemName: "figure.walk")
                            .font(.system(size: 12, weight: .black))
                        Text(item.activity)
                        
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
                    
                    HStack{
                        
                        HStack {
                            Image(systemName: "figure.walk")
                                .font(.system(size: 12, weight: .black))
                            Text(item.type)
                            
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
                        
                        HStack {
                            Image(systemName: "figure.walk")
                                .font(.system(size: 12, weight: .black))
                            Text(item.participants)
                            
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
                        
                        
                        HStack {
                            Image(systemName: "figure.walk")
                                .font(.system(size: 12, weight: .black))
                            Text(item.price)
                            
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
        
        
    }
    
}



struct ActivityDisplay_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDisplay()
    }
}
