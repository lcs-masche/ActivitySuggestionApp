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
                
                ActivityDisplay(activity: ViewModel.activity.activity)
                    .padding(.bottom, 15)
                
                HStack {
                    ParticipantsAndTypeView(participants: ViewModel.activity.participants)
                        .padding(.bottom, 15)
                    
                    TypeView(type: ViewModel.activity.type)
                        .padding(.bottom, 15)
                }
                
                
                
                HStack {
                    priceAndAccesibility(accessibility: ViewModel.activity.accessibility)
                        .padding(.bottom, 15)
                    
                    PriceView(price: ViewModel.activity.price)
                        .padding(.bottom, 15)
                    
                    
                    
                    LinkView(link: ViewModel.activity.link)
                        .padding(.bottom, 15)
                    
                    
                }
                
            }
            .task {
                await ViewModel.getRandomActivity()
                
            }
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
