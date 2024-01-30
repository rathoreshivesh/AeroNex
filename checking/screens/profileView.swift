//
//  profileView.swift
//  checking
//
//  Created by Devansh Agarwal on 20/01/24.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 324, height: 144)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(11)
                VStack{
                    Text("Aditya Sharma")
                        .font(
                            Font.custom("SF Pro Rounded", size: 24)
                                .weight(.semibold)
                        )
                        .frame(width:300,alignment: .leading)
                        .foregroundColor(.black)
                    
                    Text("asharma@gmail.com")
                        .font(
                            Font.custom("SF Pro Rounded", size: 16)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color.gray)
                        .frame(width:300,alignment: .leading)
                    ZStack{
                        Rectangle()
                            .padding(.top, 10.0)
                            .foregroundColor(.clear)
                            .frame(width: 267, height: 40)
                            .background(Color(red: 0.97, green: 0.42, blue: 0.25))
                            .cornerRadius(11)

                        HStack{
                            Spacer()
                            Text("PROFILE")
                                .font(
                                    Font.custom("SF Pro Rounded", size: 16)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.white)
                                .frame(width: 150)
                           Spacer()
                            Image("edit-ic")
                            .frame(width: 24, height: 24)
                           Spacer()
                        }
                    }.padding(.top,10)
                }
            }
            .padding(.top)
            
            
          
           Spacer()
        }
    }
}

#Preview {
    profileView()
}
