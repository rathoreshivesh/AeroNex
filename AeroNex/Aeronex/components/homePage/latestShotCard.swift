//
//  latestShotCard.swift
//  checking
//
//  Created by Devansh Agarwal on 28/01/24.
//

import SwiftUI

struct latestShotCard: View {
    var body: some View {
        VStack{
            Image("Image1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding(.horizontal, 8.0)
                .padding(.top)
            HStack{
                Image("Image2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 105)
                    .cornerRadius(15)
                Spacer()
                Image("Image3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 105)
                    .cornerRadius(15)
                Spacer()
                Image("Image4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 105)
                    .cornerRadius(15)
                Spacer()
                Image("Image5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 105)
                    .cornerRadius(15)
                
            }.frame(maxWidth: .infinity).padding(.horizontal, 8.0).padding(.top,5)
        }
    }
}

#Preview {
    latestShotCard()
}
