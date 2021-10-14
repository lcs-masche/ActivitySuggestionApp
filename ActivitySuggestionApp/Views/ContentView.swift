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
        ForEach(ViewModel.activity, id: \.activity) { item in
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
