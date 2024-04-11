//
//  pilotBookingCard.swift
//  checking
//
//  Created by Devansh Agarwal on 31/01/24.
//

import SwiftUI

struct pilotBookingCard: View {
    @Binding var pageState: String
    @Binding var previousPageState: String
    @StateObject var bookData = book()
    @ObservedObject var userModel: usersModel
    @ObservedObject var bookingModel: bookingModel
    
    @State private var isPageLoading: Bool = false
    
    
    
    
    @State private var isLogged: Bool = UserDefaults.standard.bool(forKey: "LoginState")
    @State private var loggedUserID: String = UserDefaults.standard.string(forKey: "LoggedUserID") ?? ""
    @State private var loggedUserName: String = UserDefaults.standard.string(forKey: "LoggedUserName") ?? "Preview"
    @State private var loggedUserEmail: String = UserDefaults.standard.string(forKey: "LoggedUserEmail") ?? ""
    
    var body: some View {
        NavigationStack{
        
    }
    }
}
