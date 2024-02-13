//
//  ContentView.swift
//  checking
//
//  Created by Devansh Agarwal on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 346, height: 387)
                    .background(
                        Image("AeroNexLogo")
                    )
                    .offset(x: -0.50, y: -144.50)
                HStack(spacing: 0) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 134, height: 5)
                        .background(.black)
                        .cornerRadius(100)
                }
                .padding(EdgeInsets(top: 21, leading: 128, bottom: 8, trailing: 128))
                .frame(width: 390, height: 34)
                .offset(x: -1.50, y: 401)
                VStack(alignment: .leading, spacing: 40) {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            VStack(alignment: .leading, spacing: 16) {
                                HStack(spacing: 10) {
                                    Text("Get started")
                                        .font(Font.custom("SF Pro", size: 16))
                                        .foregroundColor(.white)
                                }
                                .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                                .background(Color(red: 0.97, green: 0.42, blue: 0.25))
                                .cornerRadius(14)
                            }
                            .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                        }
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                        .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                    }
                    .frame(height: 54)
                }
                .offset(x: -1.50, y: 357)
                VStack(spacing: 24) {
                    VStack(spacing: 24) {
                        VStack(spacing: 8) {
                            Text("Welcome to App")
                                .font(Font.custom("SF Pro", size: 24).weight(.bold))
                                .foregroundColor(Color(red: 0.10, green: 0.11, blue: 0.16))
                        }
                        .frame(height: 29)
                    }
                    Text("Empower Your Skies, Elevate Your Dreams ")
                        .font(Font.custom("Poppins", size: 15).weight(.medium))
                        .lineSpacing(20)
                        .foregroundColor(.black)
                        .opacity(0.50)
                }
                .frame(width: 358)
                .offset(x: -0.50, y: 228.50)
                
                HStack(spacing: 95) {
                    HStack(alignment: .bottom, spacing: 8) {
                        ZStack() {
                            
                        }
                        .frame(width: 28, height: 13)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 36, bottom: 0, trailing: 36))
                .frame(width: 401, height: 43)
                .offset(x: 7, y: -396.50)
            }
            .frame(width: 393, height: 852)
            .background(.white);
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
