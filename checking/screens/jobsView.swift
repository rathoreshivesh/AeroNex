//
//  jobsView.swift
//  checking
//
//  Created by Devansh Agarwal on 06/01/24.
//

import SwiftUI

struct jobsView: View {
    var body: some View {
        VStack{
            Text("Opportunities")
              .font(
                Font.custom("SF Pro Rounded", size: 36)
                  
              )
              .font(.title)
              .fontWeight(.bold)
              .kerning(1)
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.25))
              .frame(maxWidth: .infinity,alignment: .leading)
              .padding(.leading,20)
            
            HStack{
                Text("Jobs ")
                .font(
                Font.custom("SF Pro", size: 17)
                .weight(.semibold)
                )
                .kerning(1)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                Spacer()
                Text("Invitations")
                  .font(
                    Font.custom("SF Pro", size: 17)
                      .weight(.semibold)
                  )
                  .kerning(1)
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
            }.padding(.horizontal,80)
                .padding(.top,20)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 393.00128, height: 1)
              .background(Color(red: 0.59, green: 0.59, blue: 0.59).opacity(0.5))
            
           searchBar()
                
                
            }
            
            ZStack(){
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 344, height: 211)
                  .background(Color(red: 1, green: 0.98, blue: 0.96))
                  .cornerRadius(3)
                VStack{
                    HStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 68, height: 66)
                            .background(
                                Image("folder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 68, height: 66)
                                    .clipped()
                            )
                            .cornerRadius(7)
                        
                        VStack{
                            Text("Building Roof Survey")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 16)
                                        .weight(.bold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity,alignment:.leading)
                            Text("Posted 9h Ago")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 15)
                                        .weight(.semibold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                            Text("Budget: ₹15,000")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 15)
                                        .weight(.semibold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                            Text("Deadline: 25 Nov 2023")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 15)
                                        .weight(.semibold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                        }.frame(maxWidth: .infinity,alignment:.leading)
                        
                        
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
                        Text("17, Express State, Chennai, Tamil Nadu")
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
                    
                    ZStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 145, height: 33)
                          .background(Color(red: 0.97, green: 0.42, blue: 0.25))
                          .cornerRadius(5)
                        Text("Interested ")
                          .font(
                            Font.custom("SF Pro Rounded", size: 15)
                              .weight(.semibold)
                          )
                          .kerning(1)
                          .multilineTextAlignment(.center)
                          .foregroundColor(.white)
                    }.padding()
                }
                
                
            }.padding(.top,30)
            
            ZStack(){
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 344, height: 211)
                  .background(Color(red: 1, green: 0.98, blue: 0.96))
                  .cornerRadius(3)
                VStack{
                    HStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 68, height: 66)
                            .background(
                                Image("folder")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 68, height: 66)
                                    .clipped()
                            )
                            .cornerRadius(7)
                        
                        VStack{
                            Text("Wedding Photography")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 16)
                                        .weight(.bold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity,alignment:.leading)
                            Text("Posted 5h Ago")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 15)
                                        .weight(.semibold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                            Text("Budget: ₹5,000")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 15)
                                        .weight(.semibold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                            Text("Deadline: 30 Nov 2023")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 15)
                                        .weight(.semibold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .frame(maxWidth: .infinity,alignment:.leading)
                        }.frame(maxWidth: .infinity,alignment:.leading)
                        
                        
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
                        Text("KB, Teynampet, Chennai, Tamil Nadu")
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
                    
                    ZStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 145, height: 33)
                          .background(Color(red: 0.97, green: 0.42, blue: 0.25))
                          .cornerRadius(5)
                        Text("Interested ")
                          .font(
                            Font.custom("SF Pro Rounded", size: 15)
                              .weight(.semibold)
                          )
                          .kerning(1)
                          .multilineTextAlignment(.center)
                          .foregroundColor(.white)
                    }.padding()
                }
                
                
            }.padding(.top,30)
            
            Spacer()
        }
    
        }
    


#Preview {
    jobsView()
}
