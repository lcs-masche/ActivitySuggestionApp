//
//  DataService.swift
//  ActivitySuggestionApp
//
//  Created by Moritz Conrad Asche on 2021-10-11.
//

import Foundation

protocol ActivityService {
    func fetch() async throws -> suggestedActivity
}


final class ActivityServiceImplementation: ActivityService {
    
    //tells it to fetch data from APIData and create an array with it
    // the async throws part is there, so that whenever there is no data that is being recieved it throws and arrow (eg. no internet connection)
    func fetch() async throws -> suggestedActivity {
        let urlSession = URLSession.shared
        
        let url = URL(string: APIData.baseURL.appending("/api/activity"))
        
        //waits for data from /\ it continues
        let (data, _) = try await urlSession.data(from: url!)
        
        //decodes the data that it recieves from the function that recieves the data from the url
        let response = try JSONDecoder().decode(suggestedActivity.self, from: data)
        print(response)
        return response
    }
    
}




