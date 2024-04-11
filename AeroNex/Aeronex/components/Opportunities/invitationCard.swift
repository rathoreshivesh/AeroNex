//
//  invitationCard.swift
//  checking
//
//  Created by Devansh Agarwal on 28/01/24.
//

import SwiftUI

struct invitationCard: View {
    var body: some View {
        ZStack(){
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 344, height: 211)
              .background(Color(red: 0.96, green: 0.96, blue: 0.96))
              .cornerRadius(3)
            VStack{
                HStack{
                    Image("file")
                    .frame(width: 48.75, height: 65)
                    
                    VStack{
                        Text("Tower Inspection")
                            .font(
                                Font.custom("SF Pro Rounded", size: 16)
                                    .weight(.bold)
                            )
                            .kerning(1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity,alignment:.leading)
                        VStack(spacing:3){
                            Text("Date: 25 Feb 2024").font(.system(size: 15, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                            
                            Text("Time: 10:00 am").font(.system(size: 15, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                            Text("Earnings : ₹8,000").font(.system(size: 15, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                        }.frame(maxWidth: .infinity,alignment:.leading)
                        
                    }
                }.padding(.leading,40).padding(.top)
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 319.00156, height: 1)
                  .background(Color(red: 0.59, green: 0.59, blue: 0.59).opacity(0.5))
                  .padding(.top)
                HStack{
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 14, height: 16)
                      .background(
                        Image("ic-dropper")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 14, height: 16)
                          .clipped()
                          .padding(.leading,10)
                      )
                    Text("Fanpet, Nanam, Chennai, Tamil Nadu")
                        .font(
                            Font.custom("SF Pro Rounded", size: 15)
                                .weight(.medium)
                        )
                        .kerning(1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(width: 311, alignment: .top)
                    
                }
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 319.00156, height: 1)
                  .background(Color(red: 0.59, green: 0.59, blue: 0.59).opacity(0.5))
                HStack{
                    ZStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 145, height: 33)
                          .background(.white)
                          .cornerRadius(5)
                          .overlay(
                            RoundedRectangle(cornerRadius: 5)
                              .inset(by: 0.5)
                              .stroke(.black, lineWidth: 1)
                          )
                        Text("Reject")
                          .font(
                            Font.custom("SF Pro Rounded", size: 15)
                              .weight(.semibold)
                          )
                          .kerning(1)
                          .multilineTextAlignment(.center)
                          .foregroundColor(.black)
                    }
                    ZStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 145, height: 33)
                          .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                          .cornerRadius(5)
                        
                        Text("Accept ")
                          .font(
                            Font.custom("SF Pro Rounded", size: 15)
                              .weight(.semibold)
                          )
                          .foregroundColor(.white)
                    }.padding()
                }.padding(.leading)
            }
            
            
        }.padding(.top,30)
    }
}

#Preview {
    invitationCard()
}
