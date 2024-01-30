//
//  ConfirmPlot.swift
//  checking
//
//  Created by Devansh Agarwal on 05/01/24.
//

import SwiftUI

struct ConfirmPlot: View {
    var body: some View {
        VStack(){
            Text("Plot Details")
              .font(
                Font.custom("SF Pro", size: 25)
                  .weight(.semibold)
              )
              .font(.headline)
              .fontWeight(.bold)
              .foregroundColor(.black)
              .frame(maxWidth: .infinity,alignment: .leading)
            
            Text("MY MID-AGE CORN FIELD ")
              .font(
                Font.custom("SF Pro", size: 20)
                  .weight(.semibold)
              )
              .foregroundColor(.black)
              .frame(maxWidth: .infinity,alignment: .leading)
              .padding(.top,30)
            
            LandmarkCard()
            
            Text("Nearby Landmark")
              .font(
                Font.custom("SF Pro", size: 20)
                  .weight(.semibold)
              )
              .foregroundColor(.black)
              .frame(maxWidth: .infinity,alignment: .leading)
              .padding(.top)
            
            Text("There is a windmill inside the farm. ")
              .font(Font.custom("SF Pro", size: 15))
              .foregroundColor(Color.gray)
              .frame(width: 269, height: 30, alignment: .topLeading)
              .frame(maxWidth: .infinity,alignment: .leading)
              .padding(.top)
            
            Text("Details")
              .font(
                Font.custom("SF Pro", size: 20)
                  .weight(.semibold)
              )
              .foregroundColor(.black)
              .frame(maxWidth: .infinity,alignment: .leading)
            VStack{
                HStack{
                    Text("Crop Type")
                      .font(
                        Font.custom("SF Pro", size: 15)
                          .weight(.semibold)
                      )
                      .foregroundColor(.gray)
                      .frame(width: 84, height: 26, alignment:.leading)
                    Spacer()
                    
                    Text("Corn")
                      .font(
                        Font.custom("SF Pro", size: 15)
                          .weight(.semibold)
                      )
                      .foregroundColor(.black)
                      .frame(width: 84, height: 26)
                             
                }.frame(maxWidth: .infinity)
                HStack{
                    Text("Plot Size")
                      .font(
                        Font.custom("SF Pro", size: 15)
                          .weight(.semibold)
                      )
                      .foregroundColor(.gray)
                      .frame(width: 84, height: 26, alignment:.leading)
                    Spacer()
                    
                    Text("2.28 hecters")
                      .font(
                        Font.custom("SF Pro", size: 15)
                          .weight(.semibold)
                      )
                      .foregroundColor(.black)
                      .frame(width: 84, height: 26)
                             
                }.frame(maxWidth: .infinity)
                    .padding(.top,5)
                HStack{
                    Text("Age")
                      .font(
                        Font.custom("SF Pro", size: 15)
                          .weight(.semibold)
                      )
                      .foregroundColor(.gray)
                      .frame(width: 84, height: 26, alignment:.leading)
                    Spacer()
                    
                    Text("60 Days")
                      .font(
                        Font.custom("SF Pro", size: 15)
                          .weight(.semibold)
                      )
                      .foregroundColor(.black)
                      .frame(width: 84, height: 26)
                             
                }.frame(maxWidth: .infinity)
                    .padding(.top,5)
                HStack{
                    Text("Planting Date")
                      .font(
                        Font.custom("SF Pro", size: 15)
                          .weight(.semibold)
                      )
                      .foregroundColor(.gray)
                      .frame(width: 100, height: 26, alignment:.leading)
                    Spacer()
                    
                    Text("22Sep2023")
                      .font(
                        Font.custom("SF Pro", size: 15)
                          .weight(.bold)
                      )
                      .foregroundColor(.black)
                      .frame(width: 84, height: 26)
                             
                }.frame(maxWidth: .infinity)
                    .padding(.top,5)
            }.padding(.trailing)
                .padding(.horizontal)
            Button(action: {}) {
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 365, height: 49)
                .background(Color(red: 0.1, green: 0.11, blue: 0.12))

                .cornerRadius(10)
                .overlay(
                    Text("Continue")
                        .font(
                            Font.custom("SF Pro", size: 24)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(.white)
                            )
                    }
                    .padding(.top, 25)
        }.padding(.leading)
        Spacer()
    }
}

#Preview {
    ConfirmPlot()
}
