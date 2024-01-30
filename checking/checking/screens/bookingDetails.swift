//
//  bookingDetails.swift
//  checking
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI

struct bookingDetails: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 393, height: 150)
                    .background(Color(red: 0.23, green: 0.83, blue: 0.65))
                VStack{
                    Image("ic-leading")
                        .frame(width: 40,height: 40)
                        .offset(x:-120,y:-40)
                    Text("Booking Details")
                      .font(
                        Font.custom("SF Pro Rounded", size: 36)
                          .weight(.semibold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                    
                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading)
            }
            
            HStack{
                VStack{
                    Text("Status")
                      .font(Font.custom("SF Pro", size: 14))
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    Text("UPCOMING")
                      .font(
                        Font.custom("SF Pro", size: 17)
                          .weight(.bold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                }
                Spacer()
                
                VStack{
                    Text("Booking ID")
                      .font(Font.custom("SF Pro", size: 14))
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    
                    Text("AI6EUKPQR")
                      .font(
                        Font.custom("SF Pro", size: 17)
                          .weight(.bold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                }
            }.padding()
                .padding(.horizontal)
            
            Divider()
            
            HStack{
                VStack(alignment: .leading){
                    Text("Spraying Details")
                      .font(
                        Font.custom("SF Pro", size: 17)
                          .weight(.bold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                    
                    Text("Spraying Date")
                      .font(Font.custom("SF Pro", size: 14))
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                      .padding(.top)
                    
                    Text("02 Feb 2024")
                        .font(
                          Font.custom("SF Pro", size: 17)
                            .weight(.bold)
                        )
                        .kerning(1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                        .padding(.top,3)
                      
                    
                    Text("Chemical")
                      .font(Font.custom("SF Pro", size: 14))
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                      .padding(.top,5)
                    
                    Text("Wood Vinegar")
                        .font(
                          Font.custom("SF Pro", size: 17)
                            .weight(.bold)
                        )
                        .kerning(1)
                        
                        .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                        .padding(.top,3)
                    
                    Text("Objectives")
                      .font(Font.custom("SF Pro", size: 14))
                      .kerning(1)
                      
                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                      .padding(.top,5)
                    
                    Text("Prevent weeds from growing ")
                        .font(
                          Font.custom("SF Pro", size: 17)
                            .weight(.bold)
                        )
                        .kerning(1)
                        
                        .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                        .padding(.top,3)
                }
                Spacer()
                
                VStack{
                    Text("Time Slot")
                      .font(Font.custom("SF Pro", size: 14))
                      .kerning(1)
                      
                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    
                    Text("Afternoon")
                      .font(
                        Font.custom("SF Pro", size: 16)
                          .weight(.bold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                      .padding(.top,3)
                }
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading){
                Text("Plot Details")
                    .font(
                        Font.custom("SF Pro", size: 17)
                            .weight(.bold)
                    )
                    .kerning(1)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                
                Text("250,  Agricultural Land, Barewal, Punjab, India - 142045")
                    .font(
                      Font.custom("SF Pro", size: 16)
                        .weight(.bold)
                    )
                    .kerning(1)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                    .padding(.top,5)
                    .frame(width: 380)
                
            }.frame(maxWidth: .infinity)
                .padding([.top, .leading, .bottom])
                
                
                
            
            Divider()
            VStack(alignment: .leading){
                Text("Pilot")
                    .font(
                        Font.custom("SF Pro", size: 17)
                            .weight(.bold)
                    )
                    .kerning(1)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                HStack{
                    Text("Name")
                        .font(Font.custom("SF Pro", size: 14))
                        .kerning(1)
                        
                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                        .padding(.top,5)
                    Spacer()
                    Text("David Beckham")
                      .font(
                        Font.custom("SF Pro", size: 14)
                          .weight(.bold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.black)
                }.padding(.top,5)
                HStack{
                    Text("Email")
                        .font(Font.custom("SF Pro", size: 14))
                        .kerning(1)
                        
                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                        .padding(.top,5)
                    Spacer()
                    Text("david@gmail.com")
                      .font(
                        Font.custom("SF Pro", size: 14)
                          .weight(.bold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.black)
                }
            }.padding()
            
            Spacer()
        }
    }
}

#Preview {
    bookingDetails()
}
