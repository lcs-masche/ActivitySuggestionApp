//
//  ParticipantsAndTypeView.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-14.
//

import SwiftUI

struct ParticipantsAndTypeView: View {
    
    var participants: Int
    
    var body: some View {
        HStack {

            
            VStack {
                
                Text("Participants:")
                    .font(.title3)
                    .bold()
                HStack {
                    
                    Image(systemName: "person.3.fill")
                        .font(.system(size: 10, weight: .black))
                    Text("\(participants)")
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
            .padding(.leading, 15)
            .padding(.trailing, 5)
            .foregroundColor(.white)
        }
    }
}

