//
//  pilotBookingCard.swift
//  checking
//
//  Created by Devansh Agarwal on 31/01/24.
//

import SwiftUI

struct pilotBookingCard: View {
    var body: some View {
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 340, height: 444)
              .background(Color(red: 0.92, green: 0.92, blue: 0.92).opacity(0.5))
              .cornerRadius(12)
            VStack(spacing: 24){
            HStack{
                Image("pilotPhoto")
                    .frame(width: 139, height: 139)
                VStack(alignment: .leading,spacing: 0){
                    Text("David\nBeckham")
                        .font(
                            Font.custom("SF Pro", size: 22)
                                .weight(.bold)
                        )
                        .foregroundColor(.black)
                        .frame(width: 100,height: 60,alignment:.leading)
                    
                    
                    HStack(spacing: 0){
                        Text("Experience:")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 20,alignment: .leading)
                        
                        Text("2 Years")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.semibold)
                            )
                            .frame(width:80, height: 20, alignment:.leading)
                            .foregroundColor(.black)
                        
                    }
                    HStack(spacing: 0){
                        Text("Charge:")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.gray)
                            .frame(width:60, height: 20,alignment: .leading)
                        
                        Text("₹8000")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.semibold)
                            )
                            .frame(width:80, height: 20, alignment:.leading)
                            .foregroundColor(.black)
                        
                    }
                    HStack(spacing: 0){
                        Text("Ratings:")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.gray)
                            .frame(width: 60, height: 20,alignment: .leading)
                        
                        Text("★★★★★")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.semibold)
                            )
                            .frame(width:80, height: 20, alignment:.leading)
                            .foregroundColor(.black)
                        
                    }
                }
                
                }
                HStack{
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 160, height: 120)
                      .background(
                        Image("img4")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 160, height: 120)
                          .clipped()
                      )
                      .cornerRadius(5)
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 160, height: 120)
                      .background(
                        Image("img5")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 160, height: 120)
                          .clipped()
                      )
                      .cornerRadius(5)
                }
                VStack(spacing:2){
                    
                    Text("Tank Capacity: 20 Litres")
                        .font(Font.custom("SF Pro", size: 16))
                        .kerning(1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 320,alignment: .leading)
                    Text("Droplet Size: 50-300 μm")
                      .font(Font.custom("SF Pro", size: 16))
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.black)
                      .frame(width: 320,alignment: .leading)
                }
                ZStack{
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 321, height: 41)
                      .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                      .cornerRadius(10)
                    Text("Book Now")
                      .font(
                        Font.custom("SF Pro", size: 18)
                          .weight(.medium)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .frame(width:100, alignment: .top)
                }
            }
           
                       
        }
    }
}

#Preview {
    pilotBookingCard()
}
