//
//  pilotSelection.swift
//  checking
//
//  Created by Devansh Agarwal on 08/01/24.
//

import SwiftUI

struct pilotSelection: View {
    var body: some View {
        VStack{
            Text("Agriculture ")
              .font(
                Font.custom("SF Pro Rounded", size: 36)
                  .weight(.semibold)
              )
              .kerning(1)
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.25))
              .frame(maxWidth: .infinity,alignment:.leading)
              .padding(.leading)
            ZStack{
                
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 340, height: 522)
                        .background(Color(red: 1, green: 0.98, blue: 0.96))
                        .cornerRadius(15)
                VStack{
                    
                        
                            HStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 139, height: 161)
                                .background(
                                    Image("pilot1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 139, height: 161)
                                        .clipped()
                                )
                                .cornerRadius(69.5)
                                
                                    VStack{
                                        
                                        Text("David")
                                            .font(
                                                Font.custom("SF Pro", size: 24)
                                                    .weight(.semibold)
                                            )
                                            .fontWeight(.bold)
                                            .kerning(1)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.black)
                                            .frame(width: 172, height:30, alignment: .topLeading)
                                        
                                        Text("Beckham")
                                            .font(
                                                Font.custom("SF Pro", size: 24)
                                                    .weight(.semibold)
                                            )
                                            .fontWeight(.bold)
                                            .kerning(1)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(.black)
                                            .frame(width: 172, height:30, alignment: .topLeading)
                                            .padding(.top,-10)
                                        
                                        HStack{
                                            Text("Experience :")
                                              .font(
                                                Font.custom("SF Pro", size: 16)
                                                  .weight(.semibold)
                                              )
                                              .kerning(1)
                                              .multilineTextAlignment(.center)
                                              .foregroundColor(.black)
                                              .frame(width: 109, height: 26, alignment: .topLeading)
                                              .padding(.leading,10)
                                            
                                            Text("2 Years")
                                              .font(
                                                Font.custom("SF Pro", size: 16)
                                                  .weight(.semibold)
                                              )
                                              .foregroundColor(.black)
                                              .frame(width:70, height: 26, alignment: .topLeading)
                                            
                                              .kerning(1)
                                              .multilineTextAlignment(.center)
                                              .foregroundColor(.black)
                                        }
                                        HStack{
                                            Text("Charge:")
                                              .font(
                                                Font.custom("SF Pro", size: 16)
                                                  .weight(.semibold)
                                              )
                                              .kerning(1)
                                              .multilineTextAlignment(.center)
                                              .foregroundColor(.black)
                                              .frame(width: 109, height: 26, alignment: .topLeading)
                                              .padding(.leading,10)
                                            
                                            Text("₹8000")
                                              .font(
                                                Font.custom("SF Pro", size: 16)
                                                  .weight(.semibold)
                                              )
                                              .foregroundColor(.black)
                                              .frame(width:70, height: 26, alignment: .topLeading)
                                            
                                              .kerning(1)
                                              .multilineTextAlignment(.center)
                                              .foregroundColor(.black)
                                        
                                        }
                                        
                                        HStack{
                                            Text("Ratings:")
                                              .font(
                                                Font.custom("SF Pro", size: 16)
                                                  .weight(.semibold)
                                              )
                                              .kerning(1)
                                              .multilineTextAlignment(.center)
                                              .foregroundColor(.black)
                                              .frame(width: 109, height: 26, alignment: .topLeading)
                                              .padding(.leading,10)
                                            
                                            Text("2 Years")
                                              .font(
                                                Font.custom("SF Pro", size: 16)
                                                  .weight(.semibold)
                                              )
                                              .foregroundColor(.black)
                                              .frame(width:70, height: 26, alignment: .topLeading)
                                            
                                              .kerning(1)
                                              .multilineTextAlignment(.center)
                                              .foregroundColor(.black)
                                        }
                                    }.padding(.top,-80)
                                    
                                    
                                
                        }
                        
                           
                            
                        
                    
                    
                }
            }
            Spacer()
        }
    }
}

#Preview {
    pilotSelection()
}
