//
//  InvitationView.swift
//  checking
//
//  Created by Devansh Agarwal on 06/01/24.
//

import SwiftUI

struct InvitationView: View {
    var body: some View {
        
            VStack{
                Text("Opportunities")
                    .font(
                        Font.custom("SF Pro Rounded", size: 36)
                        
                    )
                    .font(.title)
                    .fontWeight(.bold)
                    .kerning(1)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading,20)
                
                HStack{
                    Text("Jobs ")
                        .font(
                            Font.custom("SF Pro", size: 17)
                                .weight(.semibold)
                        )
                        .kerning(1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    Spacer()
                    Text("Invitations")
                        .font(
                            Font.custom("SF Pro", size: 17)
                                .weight(.semibold)
                        )
                        .kerning(1)
                        .multilineTextAlignment(.center)
                    .foregroundColor(.black)            }.padding(.horizontal,80)
                    .padding(.top,20)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 393.00128, height: 1)
                    .background(Color(red: 0.59, green: 0.59, blue: 0.59).opacity(0.5))
                
                searchBar()
                
                ScrollView(){
                
                invitationCard()
                
                invitationCard2()
                
                invitationCard()
                    
                invitationCard2()
                
                
                
              
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    InvitationView()
    
}
