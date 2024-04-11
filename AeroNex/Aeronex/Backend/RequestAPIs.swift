//
//  RequestAPIs.swift
//  Aeronex
//
//  Created by user2 on 23/03/24.
//

import Foundation
import Supabase

final class requestsModel: ObservableObject{
    
    @Published var responseStatus = 404
    @Published var responseMessage = "Something went wrong"
    
    @Published var requests = [getRequest]()
    
    let supabase = SupabaseClient(supabaseURL: Secrets.projectURL!, supabaseKey: Secrets.apiKey)
    
    func addNewRequest(userID: Int, userEmail: String, category: String, detail: String) async throws{
        
        let newRequest = addRequest(userID: userID, userEmail: userEmail, category: category, detail: detail, status: "added")
        
        let response = try await supabase.database
            .from(Tabel.Requests)
            .insert(newRequest)
            .execute()
        self.responseStatus = 200
        self.responseMessage = "Added Request"
    }
    
}
