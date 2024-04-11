//
//  Schema.swift
//  AeroNex_Pilot
//
//  Created by user2 on 20/03/24.

import Foundation

struct addUsers: Encodable, Identifiable, Hashable{
    
    var id: Int?
    var fullName: String
    var emailAddress: String
    var accountStatus: String
    var deviceToken: String
    var password: String
    var createdAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, fullName, emailAddress,accountStatus, deviceToken, password, createdAt
    }
}

struct getUsers: Decodable, Identifiable, Hashable{
    
    var id: Int?
    var fullName: String
    var emailAddress: String
    var accountStatus: String
    var deviceToken: String
    var password: String
    var createdAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, fullName, emailAddress,accountStatus, deviceToken, password,createdAt
    }
    
}


struct addPilots: Encodable, Identifiable, Hashable{
    
    var id: Int?
    var fullName: String
    var emailAddress: String
    var bio: String
    var price: String
    var drone: String
    var password: String
    var deviceToken: String
    var accountStatus: String
    var profileImage1: String
    var profileImage2: String
    var profileImage3: String
    var profileImage4: String
    var profileImage5: String
    var profileImage6: String
//    var portfolio: String
    var createdAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, fullName, emailAddress, bio, price, drone,password,deviceToken, accountStatus, profileImage1,profileImage2,profileImage3,profileImage4,profileImage5,profileImage6  ,createdAt
    }
    
}

struct getPilots: Decodable, Identifiable, Hashable{
    
    var id: Int?
    var fullName: String
    var emailAddress: String
    var bio: String
    var price: String
    var drone: String
    var accountStatus: String
    var deviceToken: String
    var profileImage1: String
    var profileImage2: String
    var profileImage3: String
    var profileImage4: String
    var profileImage5: String
    var profileImage6: String
    var password: String
//    var portfolio: String
    var createdAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, fullName, emailAddress, bio, price, drone, accountStatus, deviceToken, profileImage1,profileImage2,profileImage3,profileImage4,profileImage5,profileImage6,     password,createdAt
    }
    
}


struct addBookings: Encodable, Identifiable, Hashable{
    
    var id: Int?
    var userId: Int
    var address: String
    var lattitude: String
    var longitude: String
    var notes: String
    var date: Date
    var time: Date
    var price: String
    var clientName: String
    var clientId: String
    var status: String
    var pilotId: Int
    var pilotName: String
    var createdAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, userId,address, lattitude, longitude, notes, date, time, price, clientName, clientId, pilotName, pilotId, status, createdAt
    }
    
}


struct getBookings: Decodable, Identifiable, Hashable{
    
    var id: Int?
    var userId: Int
    var address: String
    var lattitude: String
    var longitude: String
    var notes: String
    var date: Date
    var time: Date
    var price: String
    var clientName: String
    var clientId: String
    var status: String
    var pilotId: Int
    var pilotName: String
    var createdAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, userId,address, lattitude, longitude, notes, date, time, price, clientName, clientId, pilotName, pilotId, status, createdAt
    }
    
}

struct addRequest: Encodable, Identifiable, Hashable{
    
    var id: Int?
    var userID: Int
    var userEmail: String
    var category: String
    var detail: String
    var status: String
    var createdAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, userID, userEmail, category, detail, status, createdAt
    }
    
}


struct getRequest: Decodable, Identifiable, Hashable{
    
    var id: Int?
    var userID: Int
    var userEmail: String
    var category: String
    var detail: String
    var status: String
    var createdAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, userID, userEmail, category, detail, status, createdAt
    }
    
}



