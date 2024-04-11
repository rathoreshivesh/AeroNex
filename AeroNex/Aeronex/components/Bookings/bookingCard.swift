////
////  bookingCard.swift
////  checking
////
////  Created by Devansh Agarwal on 29/01/24.
////
//
//import SwiftUI
//
//struct bookingCard: View {
//    var body: some View {
//        NavigationStack{
//            NavigationLink(destination:bookingDetails()){
//                
//                HStack{
//                    VStack(alignment:.leading){
//                        Text("Field Spray")
//                            .font(
//                                Font.custom("SF Pro Rounded", size: 20)
//                                    .weight(.bold)
//                            )
//                            .foregroundColor(.black)
//                            .padding(.bottom,5)
//                        VStack(alignment:.leading){
//                            Text("02 Feb 2024 - Friday")
//                                .font(.system(size: 15, weight: .regular, design: .rounded)).tracking(1).multilineTextAlignment(.center)
//                                .foregroundStyle(.black)
//                            //Time: 10:00 am
//                            Text("Time: 10:00 am").font(.system(size: 15, weight: .regular, design: .rounded)).tracking(1).multilineTextAlignment(.center)
//                                .foregroundStyle(.black)
//                        }.padding(.top)
//                    }
//                    
//                    Spacer()
//                    
//                    VStack{
//                        ZStack{
//                            Rectangle()
//                                .foregroundColor(.clear)
//                                .frame(width: 100, height: 23)
//                                .background(.white)
//                                .cornerRadius(5)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 5)
//                                        .inset(by: 1)
//                                        .stroke(Color(red: 1, green: 0.78, blue: 0.34), lineWidth: 2)
//                                )
//                            Text("UPCOMING")
//                                .font(
//                                    Font.custom("SF Pro Rounded", size: 12)
//                                        .weight(.semibold)
//                                )
//                                .kerning(1)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color(red: 1, green: 0.78, blue: 0.34))
//                                .frame(width: 80, height: 11.5, alignment: .center)
//                        }
//                        Text("INR : 5000")
//                            .font(
//                                Font.custom("SF Pro Rounded", size: 16)
//                                    .weight(.bold)
//                            )
//                        
//                            .foregroundColor(.black)
//                            .padding(.top)
//                        HStack{
//                            Image("maestroCard")
//                                .frame(width: 20, height: 20)
//                            
//                            Text("**** 1567")
//                                .font(Font.custom("SF Pro Rounded", size: 12))
//                                .kerning(1)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(.black)
//                        }.padding(.top)
//                        
//                    }
//                    
//                }.padding()
//            }.navigationBarBackButtonHidden(true)
//        }
//    }
//}
//        
//    
//
//
//#Preview {
//    bookingCard()
//}
