//
//  SigningAPIs.swift
//  AeroNex_Pilot
//
//  Created by user2 on 20/03/24.
//

import Foundation
import Supabase

enum Tabel{
    
    static let Users = "Custs"
    static let Bookings = "Bookings"
    static let Requests = "Requests"
    static let Pilots = "Pilots"
    
}

enum Defaults{
    
    static let profileImage = "https://firebasestorage.googleapis.com/v0/b/greenwealth-68871.appspot.com/o/Profile.png?alt=media&token=27712235-9bd0-414a-9b70-53125764e872"
    
    static let imageURL = "https://firebasestorage.googleapis.com/v0/b/greenwealth-68871.appspot.com/o/demo.png?alt=media&token=ab43aad1-9825-4e44-b78c-422a231be7cf"
    
}

final class usersModel: ObservableObject{
    
    @Published var users = [getUsers]()
    @Published var pilots = [getPilots]()
    @Published var myPilot = [getPilots]()
    @Published var responseStatus = 200
    @Published var responseMessage = "Something went wrong"
    //@Published var responseStatus = 404
    
    @Published var isLogged = false
    
    let supabase = SupabaseClient(supabaseURL: Secrets.projectURL!, supabaseKey: Secrets.apiKey)

    func loginUser(emailAddress: String, password: String) async throws{
        
        let Users: [getUsers] = try await supabase.database
            .from(Tabel.Users)
            .select()
            .eq("emailAddress", value: emailAddress.lowercased())
            .eq("password", value: password)
            .eq("accountStatus", value: "active")
            .order("fullName",ascending: false)
            .execute()
            .value
        DispatchQueue.main.async {
            if(!Users.isEmpty){
                self.isLogged = true
            }
            self.users = Users
        }
        
    }
    
    func addUser(fullName: String, emailAddress: String, password: String) async throws{
        print("API Called")
        let Users: [getUsers] = try await supabase.database
            .from(Tabel.Users)
            .select()
            .eq("emailAddress", value: emailAddress.lowercased())
            .order("fullName",ascending: false)
            .execute()
            .value
        print(Users)
        if(!Users.isEmpty){
            self.responseStatus = 404
            self.responseMessage = "Email already registered"
            self.isLogged = false
        }
        else{
            print("Creation Started")
            let newUser = addUsers(fullName: fullName, emailAddress: emailAddress.lowercased(), accountStatus: "active", deviceToken: "notYetAdded", password: password)
            print(newUser)
            let response = try await supabase.database
                .from(Tabel.Users)
                .insert([newUser])
                .execute()
            print("Added")
            print(response.status)
            print(response.data)
            print(response.response)
            let addedUser: [getUsers] = try await supabase.database
                .from(Tabel.Users)
                .select()
                .eq("emailAddress", value: emailAddress.lowercased())
                .order("fullName",ascending: false)
                .execute()
                .value
            DispatchQueue.main.async {
                if(!addedUser.isEmpty){
                    self.responseStatus = 200
                    self.responseMessage = "User created successfully"
                    self.isLogged = true
                    self.users = addedUser
                    print(addedUser[0])
                }
            }
        }
        
    }
    
    func getUser(emailAddress: String) async throws{
        
        let Users: [getUsers] = try await supabase.database
            .from(Tabel.Users)
            .select()
            .eq("emailAddress", value: emailAddress.lowercased())
            .order("fullName",ascending: false)
            .execute()
            .value
        DispatchQueue.main.async {
            
            self.responseStatus = 200
            self.responseMessage = "Found user"
            self.users = Users
        }
        
    }
    
    func updateProfile(userId: Int, profileImage: String, fullName: String) async throws{
        self.responseStatus = 400
        try await supabase.database
            .from(Tabel.Users)
            .update(["profileImage":profileImage])
            .eq("id", value: userId)
            .execute()
        try await supabase.database
            .from(Tabel.Users)
            .update(["fullName":fullName])
            .eq("id", value: userId)
            .execute()
        self.responseStatus = 200
    }
    
    func updateProfileData(userId: Int, fullName: String) async throws{
        self.responseStatus = 400
        try await supabase.database
            .from(Tabel.Pilots)
            .update(["fullName":fullName])
            .eq("id", value: userId)
            .execute()
        self.responseStatus = 200
    }
    
    func getPilot() async throws{
        let Pilots: [getPilots] = try await supabase.database
            .from(Tabel.Pilots)
            .select()
            .order("fullName",ascending: false)
            .execute()
            .value
        DispatchQueue.main.async {
            
            self.responseStatus = 200
            self.responseMessage = "Found user"
            self.pilots = Pilots
        }
    }
    
    func getMyPilot(id: Int) async throws{
        let Pilots: [getPilots] = try await supabase.database
            .from(Tabel.Pilots)
            .select()
            .eq("id", value: id)
            .order("fullName",ascending: false)
            .execute()
            .value
        DispatchQueue.main.async {
            
            self.responseStatus = 200
            self.responseMessage = "Found user"
            self.myPilot = Pilots
        }
    }
    
}
