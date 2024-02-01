//
//  jobsCard2.swift
//  checking
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI

struct jobsCard2: View {
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
                        Text("Wood Vinegar Spray")
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
                            .padding(.top,1)
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
                      .background(Color(red: 0.1, green: 0.11, blue: 0.12))
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
    }
}

#Preview {
    jobsCard2()
}
