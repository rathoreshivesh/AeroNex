//
//  bookings.swift
//  checking
//
//  Created by Devansh Agarwal on 29/01/24.
//

import SwiftUI

struct bookings: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 393, height: 150)
                    .background(Color(red: 0.23, green: 0.83, blue: 0.65))
                
                VStack(alignment: .leading)
                   {
                    Text("Bookings")
                      .font(
                        Font.custom("SF Pro Rounded", size: 36)
                          .weight(.semibold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                    Text("Manage all your bookings")
                      .font(
                        Font.custom("SF Pro Rounded", size: 15)
                          .weight(.semibold)
                      )
                      .kerning(1)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.89, green: 0.89, blue: 0.89))
                   }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
            }
            
            searchBarBookings()
            ScrollView{
                bookingCard()
                
                
                Divider()
                
                bookingCard2()
                
                Divider()
                
                bookingCard3()
                
                Divider()
                
                bookingCard()
                
                Divider()
                bookingCard3()
            }
            
        }
    }
}

#Preview {
    bookings()
}
