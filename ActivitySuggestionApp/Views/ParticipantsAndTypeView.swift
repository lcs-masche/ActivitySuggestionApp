//
//  ParticipantsAndTypeView.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-14.
//

import SwiftUI

struct ParticipantsAndTypeView: View {
    var body: some View {
        
        ForEach(suggestedActivity.dummyData, id: \.activity) { item in
            
            
            HStack {
                
                VStack {
                    
                    Text("Type:")
                        .font(.title3)
                        .bold()
                    
                    
                    HStack {
                        
                        Image(systemName: "figure.walk")
                            .font(.system(size: 10, weight: .black))
                        Text(item.type)
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
                    
                    Text("Participants:")
                        .font(.title3)
                        .bold()
                    
                    
                    HStack {
                        
                        Image(systemName: "person.3.fill")
                            .font(.system(size: 10, weight: .black))
                        Text("\(item.participants)")
                            .font(.subheadline)
                        
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
struct ParticipantsAndTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipantsAndTypeView()
    }
}
