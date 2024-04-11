//
//  homePagePilotCard.swift
//  checking/Users/devanshagarwal/Documents/GitHub/AeroNex/Aeronex/Aeronex/screens/pilotSelection.swift
//
//  Created by Devansh Agarwal on 04/02/24.
//

import SwiftUI

struct homePagePilotCard: View {
    var pilotsData:pilotFields
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
                        Rectangle()
                            .fill(Color.clear)
                            .frame(width:50, height: 50)
                            .overlay(
                                Image("pPhoto")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height:50)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.teel, lineWidth: 4)),alignment: .center)
                        
                           
                        
                        VStack(alignment:.leading,spacing:2){
                            Text(pilotsData.name).font(.system(size: 15, weight: .semibold))
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
                            Text(pilotsData.city).font(.system(size: 13, weight: .regular))
                            Text("Pilot serves in this and near ths City").font(.system(size: 10, weight: .regular))
                                .foregroundStyle(.gray)
                        }
                    }
                    HStack{
                        Image("trophy")
                            .frame(width:18,height: 16)
                        VStack(alignment:.leading){
                            Text(pilotsData.category  ).font(.system(size: 13, weight: .regular))
                            Text("Pilot serves in this Category").font(.system(size: 10, weight: .regular))
                                .foregroundStyle(.gray)
                            
                        }
                    }
                }
                
                //₹8,000
                 Text(pilotsData.charges).font(.system(size: 16, weight: .semibold)).tracking(1)
            }
        }
    }
}

#Preview {
    homePagePilotCard( pilotsData:  pilotFields(name: "Mana Watt", experience: "2 years", charges: "$400/hr",city: "Delhi",category: "Agriculture"))
}
