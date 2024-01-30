//
//  LandmarkCard.swift
//  checking
//
//  Created by Devansh Agarwal on 28/01/24.
//

import SwiftUI

struct LandmarkCard: View {
    var body: some View {
        ZStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 318, height: 120)
                    .background(Color.bgbeige)
                
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                Text("250,  Agricultural Land, Barewal, Punjab, India - 142045")
                    .font(Font.custom("SF Pro", size: 16))
                    .foregroundColor(.black)
                    .frame(width: 269, height: 59, alignment: .center)
                    .padding(.top,60)
            }.padding(.top,220)
            
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 318, height: 209)
              .background(
                Image("map")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 318, height: 209)
                  .clipped()
              )
              .cornerRadius(20)
        }.padding(.trailing).padding(.top,-30)
    }
}

#Preview {
    LandmarkCard()
}
