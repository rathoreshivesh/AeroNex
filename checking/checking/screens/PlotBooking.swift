//
//  PlotBooking.swift
//  checking
//
//  Created by Devansh Agarwal on 05/01/24.
//

import SwiftUI

struct PlotBooking: View {
    var body: some View {
        VStack(){
            HStack{
                Image("Line 3")
                    .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 12.5)
                .multilineTextAlignment(.leading)
                Spacer()
                Text("Select a Plot")
                .font(
                Font.custom("SF Pro", size: 20)
                .weight(.semibold)
                )
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding(.trailing, 30.0)
                .frame(maxWidth: .infinity, alignment: .center)
                
                
            }
            Spacer()
            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 360, height: 2)
            .background(Color(red: 0.59, green: 0.59, blue: 0.59))
            Spacer()
            VStack(){
                
                    Text("Edit Booking Information")
                        .font(
                            Font.custom("SF Pro", size: 25)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.25))
                        .padding(.leading, 20.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
                
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 360, height: 1)
              .background(Color(red: 0.59, green: 0.59, blue: 0.59))
            Spacer()
            VStack(spacing:14){
                Text("Choose Spraying Date and Time")
                    .font(
                        Font.custom("SF Pro", size: 20)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.25))
                    .padding(.leading, 20.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Spraying Date")
                    .font(
                        Font.custom("SF Pro", size: 16)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20.0)
            }
            Spacer()
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 336, height: 53)
                    .background(.white)
                
                    .cornerRadius(11)
                    .overlay(
                        RoundedRectangle(cornerRadius: 11)
                            .inset(by: 0.5)
                            .stroke(.black, lineWidth: 1)
                        
                    )
                
                HStack{
                    
                    Text("20 Nov 2023")
                      .font(Font.custom("SF Pro", size: 16))
                      .foregroundColor(.black)
                    Spacer()
                    
                    calendarView()
                        
                        
                    
                    
                    

                }
                .padding(.horizontal, 40.0)
                
            }
            Spacer()
            
            Text("Please Make the booking 3 days in advance. We cannot guarantee that you will find a pilot in less than 3 days.")
              .font(Font.custom("SF Pro", size: 14))
              .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
              .frame(width: 336, alignment: .leading)
            Spacer()
            
            Text("Time Slot ")
              .font(
                Font.custom("SF Pro", size: 16)
                  .weight(.semibold)
              )
              .foregroundColor(.black)
              .padding(.leading, 20.0)
              .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            ZStack{
                
                
                
                
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 336, height: 53)
                            .background(.white)
                        
                            .cornerRadius(11)
                            .overlay(
                                RoundedRectangle(cornerRadius: 11)
                                    .inset(by: 0.5)
                                    .stroke(.black, lineWidth: 1)
                                
                            )
                        
                        
                    
                HStack{
                    Text("Afternoon")
                        .font(Font.custom("SF Pro", size: 16))
                        .foregroundColor(.black)
                    Spacer()
                    Image("Line 4")
                    .frame(width: 23, height: 14)
                    
                    
                    
                    
                }
                .padding(.horizontal, 40.0)
            }
            Spacer()
            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 360, height: 1)
            .background(Color(red: 0.59, green: 0.59, blue: 0.59))
            
            Spacer()
            
            Text("Chemical Type")
              .font(
                Font.custom("SF Pro", size: 20)
                  .weight(.semibold)
              )
              .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.25))
              .padding(.leading, 20.0)
              .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            
            ZStack{
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 336, height: 53)
                    .background(.white)
                
                    .cornerRadius(11)
                    .overlay(
                        RoundedRectangle(cornerRadius: 11)
                            .inset(by: 0.5)
                            .stroke(.black, lineWidth: 1)
                    )
                
                Text("Wood Vinegar")
                  .font(Font.custom("SF Pro", size: 16))
                  .foregroundColor(.black)
                  .padding(.leading, 40.0)
                  .frame(maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 360, height: 1)
              .background(Color(red: 0.59, green: 0.59, blue: 0.59))
            Spacer()
            
            VStack(){
                
                    Text("Select Spraying Objectives ")
                        .font(
                            Font.custom("SF Pro", size: 20)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.25))
                        
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    
                    
                    HStack{
                        
                        Image("Circle")
                        
                        
                        
                        Text("Prevent weeds from growing ")
                            .font(Font.custom("SF Pro", size: 16))
                            .foregroundColor(.black)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        
                        Image("Light")
                        
                        
                        
                        Text("Killing Weeds")
                            .font(Font.custom("SF Pro", size: 16))
                            .foregroundColor(.black)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                
                
                
            }
            .padding(.leading, 20.0)
            
            Spacer()
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 332, height: 49)
                    .background(Color(red: 0.97, green: 0.42, blue: 0.25))
                
                    .cornerRadius(24.5)
                Text("Confirm")
                  .font(
                    Font.custom("SF Pro", size: 24)
                      .weight(.semibold)
                  )
                  .foregroundColor(.white)
            }
            
            
            

    
            
        }

    }
}
#Preview {
    PlotBooking()
}
