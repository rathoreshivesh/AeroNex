//
//  news.swift
//  checking
//
//  Created by Devansh Agarwal on 28/01/24.
//

import SwiftUI

struct news: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 366, height: 85)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.85, green: 0.85, blue: 0.85), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )
                )
            Text("Ministry of Civil Aviation has removed the mandatory passport requirement for aspiring drone pilots. ")
                .font(Font.custom("SF Pro", size: 16))
                .kerning(1)
                .foregroundColor(.black)
                .frame(width: 346, height: 76, alignment: .topLeading)
        }.padding(.top,10)
    }
}

#Preview {
    news()
}
