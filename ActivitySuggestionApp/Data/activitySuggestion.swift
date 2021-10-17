//
//  activitySuggestion.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-11.
//

import Foundation

struct suggestedActivity: Decodable {
    let activity: String  //1
    let type: String   //2
    let participants: Int //2
    let price: Double //4
    let link: String //3
    let key: String
    let accessibility: Double //4
}

//extension suggestedActivity {
//    static let dummyData: [suggestedActivity] = [
//        suggestedActivity(activity: "Try not to laugh, or you will die!", type: "Fun", participants: 100, price: 0.0, link: "wikipedia.com", key: "8329572398", accessibility: "1")
//    ]
//}

