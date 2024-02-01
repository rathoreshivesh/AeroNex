//
//  bookingCard3.swift
//  checking
//
//  Created by Devansh Agarwal on 29/01/24.
//

import SwiftUI

struct bookingCard3: View {
    var body: some View {
        HStack{
            VStack(alignment:.leading){
                Text("Ground Survey")
                  .font(
                    Font.custom("SF Pro Rounded", size: 20)
                      .weight(.bold)
                  )
                  .foregroundColor(.black)
                  .padding(.bottom,5)
                Text("Booking ID: AB6IUF")
                  .font(Font.custom("SF Pro Rounded", size: 15))
                  .foregroundColor(.gray)
                Text("Duration: 1 Hour")
                  .font(Font.custom("SF Pro Rounded", size: 15))
                  .foregroundColor(.gray)
                Text("01 Feb 2024 - Thursday")
                  .font(Font.custom("SF Pro Rounded", size: 15))
                  .foregroundColor(.gray)
                Text("9:00 AM - 10:00 AM")
                  .font(Font.custom("SF Pro Rounded", size: 15))
                  .foregroundColor(.gray)
            }
            
            Spacer()
            
            VStack{
                ZStack{
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 100, height: 23)
                      .background(.white)
                      .cornerRadius(5)
                      .overlay(
                        RoundedRectangle(cornerRadius: 5)
                          .inset(by: 1)
                          .stroke(Color(red: 0.95, green: 0.35, blue: 0.25), lineWidth: 2)

                          )

                      
                    Text("CANCELLED")
                      .font(
                        Font.custom("SF Pro Rounded", size: 12)
                          .weight(.semibold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.95, green: 0.35, blue: 0.25))
                      .frame(width: 100, height: 11.5, alignment: .center)
                }
                Text("INR : 2000")
                  .font(
                    Font.custom("SF Pro Rounded", size: 16)
                      .weight(.bold)
                  )
                  
                  .foregroundColor(.black)
                  .padding(.top)
                HStack{
                    Image("maestroCard")
                    .frame(width: 20, height: 20)
                    
                    Text("**** 3567")
                      .font(Font.custom("SF Pro Rounded", size: 12))
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.black)
                }.padding(.top)
                
            }
            
        }.padding()
    }
}

#Preview {
    bookingCard3()
}
