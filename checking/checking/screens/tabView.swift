//
//  tabView.swift
//  checking
//
//  Created by Devansh Agarwal on 28/01/24.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView{
            homePage()
                .tabItem {
                    Image("ic-home")
                    Text("home")
                }
            InvitationView()
                .tabItem{
                    Image("ic-pilot")
                    Text("Pilot")
                }
            bookings()
                .tabItem{
                    Image("ic-calendar")
                    Text("Booking")
                }
            profile()
                .tabItem {
                    Image("ic-user")
                    Text("Profile")
                    
                }
        }
    }
}
#Preview {
    tabView()
}
