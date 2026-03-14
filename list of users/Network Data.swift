//
//  File.swift
//  list of users
//
//  Created by kalyan on 3/13/26.
//

import Foundation
import Observation


@Observable

class UserViewModel{
    var users: [UserData] = []
    var isLoading = false
    var errorMessage: String? = nil

    
    func fetchData() async {
        isLoading = true
        errorMessage = nil
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else{
            isLoading = false
            errorMessage = "Invalid url"
            return
        }
        
        let request = URLRequest(url: url)
       
        do{
            let (data, _) = try await URLSession.shared.data(for: request)
            
            users = try JSONDecoder().decode([UserData].self, from: data)
            
        } catch{
            print("Error : \(error)")
        }
        
        isLoading = false
        
    }
}
