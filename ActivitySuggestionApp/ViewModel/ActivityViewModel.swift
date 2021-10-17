//
//  ActivityViewModel.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-12.
//

import Foundation

protocol activityViewModel: ObservableObject {
    //purpose of the function is to return a activity
    func getRandomActivity() async
}

@MainActor

final class ActivityViewModelImplementation:  activityViewModel {
    
    @Published private(set) var activity: suggestedActivity = suggestedActivity(activity: "", type: "", participants: 0, price: 0.0, link: "", key: "", accessibility: 0.0)
    
    private let service: ActivityServiceImplementation
    
    init(service: ActivityServiceImplementation) {
        self.service = service
    }
    
    func getRandomActivity() async {
        do {
            self.activity = try await service.fetch()
        } catch {
            print(error)
        }
        
    }
}
