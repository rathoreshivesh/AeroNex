//
//  landmarkCard2.swift
//  checking
//
//  Created by Devansh Agarwal on 29/01/24.
//

import SwiftUI

struct landmarkCard2: View {
    var body: some View {
        ZStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 366, height: 80)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(10)
                Text("250,  Agricultural Land, Barewal, Punjab, India - 142045")
                  .font(Font.custom("SF Pro", size: 16))
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                  .frame(width: 351, height: 59, alignment: .center)
                  .padding(.top)
                
                    
            }.offset(x:0,y:125)
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 365, height: 219)
                    .background(
                        Image("mainMap")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 365, height: 219)
                            .clipped()
                    )
                    .cornerRadius(10)
                Image("location-dot-solid 1")
                .frame(width: 30, height: 40)
            }
               
        }
    }
}

#Preview {
    landmarkCard2()
}
