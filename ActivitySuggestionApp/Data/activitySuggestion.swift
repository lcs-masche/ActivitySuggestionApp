//
//  activitySuggestion.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-11.
//

import Foundation

struct suggestedActivity: Decodable {
    let activity: String
    let type: String
    let participants: Int
    let price: Double
    let link: String
    let key: String
    let accessibility: String
}

extension suggestedActivity {
    static let dummyData: [suggestedActivity] = [
        suggestedActivity(activity: "Try not to laugh, or you will die!", type: "Fun", participants: 100, price: 0.0, link: "wikipedia.com", key: "8329572398", accessibility: "1")
    ]
}
