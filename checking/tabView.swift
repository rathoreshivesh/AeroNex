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
                    Image("ic-house")
                    Text("home")
                }
            InvitationView()
                .tabItem{
                    Image("ic-pilot")
                    Text("Pilot")
                }
            InvitationView()
                .tabItem{
                    Image("ic-calendar")
                    Text("Booking")
                }
            profileView()
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
