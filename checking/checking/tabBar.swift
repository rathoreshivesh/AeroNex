//
//  tabBar.swift
//  checking
//
//  Created by Devansh Agarwal on 06/01/24.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        Spacer()
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 414, height: 72)
                .background(.white)

                .shadow(color: .black.opacity(0.08), radius: 24, x: 0, y: 2)
            HStack{
                Spacer()
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 29, height: 28)
                .background(
                Image("ic-home")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 29, height: 28)
                .clipped()
                )
                Spacer()
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 29, height: 28)
                .background(
                Image("ic-calen")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 29, height: 28)
                .clipped()
                )
                Spacer()
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 29, height: 28)
                .background(
                Image("ic-pilot")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 29, height: 28)
                .clipped()
                )
                Spacer()
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 29, height: 28)
                .background(
                Image("ic-calendar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 29, height: 28)
                .clipped()
                )
                Spacer()
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 29, height: 28)
                .background(
                Image("ic-profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 29, height: 28)
                .clipped()
                )
                Spacer()
            }
        }.ignoresSafeArea(.all)
    }
}

#Preview {
    tabBar()
}
