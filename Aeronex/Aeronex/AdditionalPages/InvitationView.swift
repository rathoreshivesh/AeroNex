//
//  InvitationView.swift
//  checking
//
//  Created by Devansh Agarwal on 06/01/24.
//

import SwiftUI

struct InvitationView: View {
    var body: some View {
        NavigationStack{
            
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 15)
                        .background(Color(red: 0.23, green: 0.83, blue: 0.65))
                    
                }
                
                
                
                
                searchBar()
                
                ScrollView(){
                    
                    invitationCard()
                    
                    invitationCard2()
                    
                    invitationCard()
                    
                    invitationCard2()
                    
                    
                    
                    
                    
                    Spacer()
                    
                }
            }.navigationTitle("Invitation")
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    InvitationView()
    
}
