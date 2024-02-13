//
//  jobsView.swift
//  checking
//
//  Created by Devansh Agarwal on 06/01/24.
//

import SwiftUI

struct jobsView: View {
    var body: some View {
        NavigationStack{
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
                        .foregroundColor(.black)
                    Spacer()
                    NavigationLink(destination:InvitationView()){
                        Text("Invitations")
                            .font(
                                Font.custom("SF Pro", size: 17)
                                    .weight(.semibold)
                            )
                            .kerning(1)
                            .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))}
                }.padding(.horizontal,80)
                    .padding(.top,20)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 393.00128, height: 1)
                    .background(Color(red: 0.59, green: 0.59, blue: 0.59).opacity(0.5))
                
                searchBar()
                
                ScrollView{
                    
                    
                    jobsCard()
                    
                    jobsCard2()
                    
                    jobsCard()
                    
                    jobsCard2()
                    
                    
                    
                    Spacer()
                }
            }
        }
    }
    
        }
    


#Preview {
    jobsView()
}
