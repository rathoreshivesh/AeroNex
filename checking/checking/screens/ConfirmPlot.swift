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
            VStack{
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
            }.padding(.leading)
            
            landmarkCard2()
            Spacer()
            
            VStack{
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
            }.padding(.leading)
            VStack{
                Text("Details")
                    .font(
                        Font.custom("SF Pro", size: 20)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                
                detailsCard()
                
            }.padding(.leading)

            
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
            }.padding(.top,10)
                    
        }
        Spacer()
    }
}

#Preview {
    ConfirmPlot()
}
