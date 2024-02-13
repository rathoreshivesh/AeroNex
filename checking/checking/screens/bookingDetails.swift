//
//  bookingDetails.swift
//  checking
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI

struct bookingDetails: View {
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 15)
                        .background(Color(red: 0.23, green: 0.83, blue: 0.65))
                    
                }
                ScrollView{
                    
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
                        Text("Plot Details").font(.system(size: 17, weight: .bold))
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
                        Text("Pilot").font(.system(size: 17, weight: .bold))
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
                    
                    VStack(alignment:.leading){
                        Text("Cost").font(.system(size: 17, weight: .bold))
                            .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                        HStack(){
                            //Service Fee
                            Text("Service Fee").font(.system(size: 14, weight: .regular)).tracking(1).multilineTextAlignment(.center)
                            Spacer()
                            //₹8,000
                            Text("₹").font(.system(size: 14, weight: .bold)).tracking(1) + Text("8,000").font(.system(size: 14, weight: .semibold)).tracking(1)
                        }.padding(.top)
                        
                        
                    }.padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 2)
                            .fill(.teel)
                            .opacity(0.4)
                            .frame(width: 370, height: 73)
                        VStack{
                            HStack{
                                //Cost Update
                                Text("Cost Update").font(.system(size: 16, weight: .bold)).tracking(1).multilineTextAlignment(.center)
                                
                                Spacer()
                                //+ ₹1,500
                                Text("+ ₹1").font(.system(size: 16, weight: .bold)).tracking(1) + Text(",500").font(.system(size: 16, weight: .semibold)).tracking(1)
                            }.padding(.horizontal)
                            //Measured plot size: 1.2 Acres
                            VStack{
                                Text("Measured plot size: 1.2 Acres ").font(.system(size: 14, weight: .semibold)).tracking(1).multilineTextAlignment(.center)
                                    .frame(width:360,alignment:.trailing)
                            }
                        }
                    }
                    HStack{
                        //Total
                        Text("Total").font(.system(size: 24, weight: .bold)).tracking(1).multilineTextAlignment(.center)
                        Spacer()
                        Text("₹9,500").font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                    }.padding(.horizontal)
                    
                    Divider()
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 365, height: 49)
                        .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                    
                        .cornerRadius(10)
                        .overlay(
                            Text("Cancel Booking")
                                .font(
                                    Font.custom("SF Pro", size: 24)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.white)
                        )
                    Spacer()
                }
            }.navigationTitle(//Booking Details
                Text("Booking Details").font(.system(size: 36, weight: .semibold, design: .rounded))
            )
        }
    }
}

#Preview {
    bookingDetails()
}
