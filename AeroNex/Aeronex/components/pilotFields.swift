//
//  pilotFields.swift
//  Aeronex
//
//  Created by Devansh Agarwal on 27/02/24.
//

import SwiftUI


struct pilotFields: Identifiable {
    let id: UUID = UUID() // Adding an id for Identifiable protocol
    var name: String
    var experience: String
    var charges: String
    var city:String
    var category:String
        // Add more fields as necessary
    }
    let pilotsData = [
    pilotFields(name: "Dane Jobs", experience: "5 years", charges: "$200/hr",city: "Mumbai",category:"Agriculture"),
    pilotFields(name: "Jane Doe", experience: "3 years", charges: "$150/hr",city: "Chennai",category: "Photography"),
    pilotFields(name: "Devansh Agarwal", experience: "6 years", charges: "$500/hr",city: "bengaluru",category:"Surveillance"),
    pilotFields(name: "Mana Watt", experience: "2 years", charges: "$400/hr",city: "Delhi",category: "Agriculture")
    // Add more pilot data as necessary
    ]

    // Example data
   



struct userFields:Identifiable{
    var id: String = ""
     var name : String = ""
     var email : String = ""
     var phNO : String = ""
     var password : String = ""
    var userPhoto: String = ""
}


