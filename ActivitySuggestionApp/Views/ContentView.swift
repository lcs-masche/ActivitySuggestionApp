//
//  ContentView.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-11.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var ViewModel = ActivityViewModelImplementation(service: ActivityServiceImplementation()
    )
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.red, .blue],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                ActivityDisplay()
                    .padding(.bottom, 15)
                
                ParticipantsAndTypeView()
                    .padding(.bottom, 15)
                
                priceAndAccesibility()
                    .padding(.bottom, 15)
                
                LinkView()
                    .padding(.bottom, 15)
                
                
            }
        }
        
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
