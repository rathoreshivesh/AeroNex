//
//  homePagePilotCard.swift
//  checking
//
//  Created by Devansh Agarwal on 04/02/24.
//

import SwiftUI

struct homePagePilotCard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 356, height: 160)
                .background(Color(.rect))
            
                .cornerRadius(15)
            HStack(spacing:45){
                VStack(alignment:.leading,spacing:10){
                    HStack(spacing:20){
                        Image("pPhoto")
                            .frame(width:50,height: 50)
                        
                        VStack(alignment:.leading,spacing:2){
                            Text("Michael Nowak").font(.system(size: 15, weight: .semibold))
                            HStack(spacing:4){
                                Text("★★★★★")
                                    .font(.system(size: 10, weight: .semibold))
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 2, height: 15)
                                    .background(Color(.gray))
                                
                                Text("96 reviews").font(.system(size: 12, weight: .regular))
                                
                            }
                            
                        }
                    }
                    
                    HStack{
                        Image("dropPin")
                            .frame(width:15,height:20)
                        VStack(alignment:.leading){
                            Text("Kilpauk, Chennai").font(.system(size: 13, weight: .regular))
                            Text("0.8 km from you").font(.system(size: 10, weight: .regular))
                                .foregroundStyle(.gray)
                        }
                    }
                    HStack{
                        Image("trophy")
                            .frame(width:18,height: 16)
                        VStack(alignment:.leading){
                            Text("UAV expert").font(.system(size: 13, weight: .regular))
                            Text("You have a UAV agri").font(.system(size: 10, weight: .regular))
                                .foregroundStyle(.gray)
                            
                        }
                    }
                }
                
                //₹8,000
                Text("₹").font(.system(size: 16, weight: .bold)).tracking(1) + Text("8,000").font(.system(size: 16, weight: .semibold)).tracking(1)
            }
        }
    }
}

#Preview {
    homePagePilotCard()
}
