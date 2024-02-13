//
//  bookingCard2.swift
//  checking
//
//  Created by Devansh Agarwal on 29/01/24.
//

import SwiftUI

struct bookingCard2: View {
    var body: some View {
        HStack{
            VStack(alignment:.leading){
                Text("Tower Inspection")
                  .font(
                    Font.custom("SF Pro Rounded", size: 20)
                      .weight(.bold)
                  )
                  .foregroundColor(.black)
                  .padding(.bottom,5)
                Text("Booking ID: AB3IUK")
                  .font(Font.custom("SF Pro Rounded", size: 15))
                  .foregroundColor(.gray)
                Text("Duration: 2 Hour")
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
                          .stroke(Color(red: 0.28, green: 0.69, blue: 0.46), lineWidth: 2)

                          )

                      
                    Text("COMPLETED")
                      .font(
                        Font.custom("SF Pro Rounded", size: 12)
                          .weight(.semibold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.27, green: 0.7, blue: 0.46))
                      .frame(width: 100, height: 11.5, alignment: .center)
                }
                Text("INR : 3000")
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
    bookingCard2()
}
