//
//  checkingApp.swift
//  checking
//
//  Created by Devansh Agarwal on 19/12/23.
//

import SwiftUI
import Firebase

@main
struct Aeronex : App {
    init(){
        
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
           ContentView()
        }
    }
}
