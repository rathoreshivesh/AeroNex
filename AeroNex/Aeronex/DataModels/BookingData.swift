//
//  BookingData.swift
//  Aeronex
//
//  Created by user2 on 23/03/24.
//

import Foundation
import PhotosUI

class book: ObservableObject{
    

    @Published var address: String
    @Published var lattitude: String
    @Published var longitude: String
    @Published var date: Date
    @Published var time: Date
    @Published var bookingViewed: Bool
    
    init(){
        self.address = ""
        self.lattitude = ""
        self.longitude = ""
        self.date = Date.now
        self.time = Date.now
        self.bookingViewed = false
    }
    
}

