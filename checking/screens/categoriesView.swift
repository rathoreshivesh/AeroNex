//
//  categoriesView.swift
//  checking
//
//  Created by Devansh Agarwal on 19/12/23.
//

import SwiftUI

struct categoriesView: View {
    var body: some View {
        VStack{
            Text("Categories ")
                .font(
                    Font.custom("SF Pro", size: 36)
                        .weight(.semibold)
                )
                .padding(.leading, 15.0)
                .kerning(1)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.25))
                .frame(maxWidth: .infinity,alignment: .leading)
            Spacer()
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 331, height: 141)
                    .background(
                        Image("Infra")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 331, height: 141)
                            .clipped()
                            .opacity(0.9)
                    )
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.5)
                            .stroke(.black, lineWidth: 1)
                    )
                Text("Infrastructure ")
                  .font(Font.custom("SF Pro Text", size: 40))
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  .kerning(1)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.white)
                  .frame(width: 300, height: 32, alignment: .top)
            }
            Spacer()
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 331, height: 141)
                    .background(
                        Image("Infra")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 331, height: 141)
                            .clipped()
                            .opacity(0.9)
                    )
                    .cornerRadius(15)
                    
                    
                Text("Infrastructure ")
                  .font(Font.custom("SF Pro Text", size: 40))
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  .kerning(1)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.white)
                  .frame(width: 300, height: 32, alignment: .top)
            }
            Spacer()
        }
        Spacer()
    }
}

#Preview {
    categoriesView()
}
