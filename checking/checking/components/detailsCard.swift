//
//  detailsCard.swift
//  checking
//
//  Created by Devansh Agarwal on 29/01/24.
//

import SwiftUI

struct detailsCard: View {
    var body: some View {
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
            
            
        }.padding(.horizontal)
    }
}

#Preview {
    detailsCard()
}
