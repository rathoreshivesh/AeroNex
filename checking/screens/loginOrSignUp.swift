//
//  loginOrSignUp.swift
//  checking
//
//  Created by Devansh Agarwal on 14/01/24.
//

import SwiftUI

struct loginOrSignUp: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 390, height: 390)
                .background(
                    Image("AeroNexLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 390, height:390 )
                        .clipped()
                )
            
            
            VStack(alignment: .center, spacing: 8) {
                Text("Login or sign up")
                    .font(
                        Font.custom("SF Pro", size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.16))
                Text("Please select your preferred method\nto continue setting up your account")
                    .font(Font.custom("SF Pro", size: 15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
                    .frame(maxWidth: .infinity, alignment: .top)
                
            }
            
            .frame(maxWidth: .infinity, alignment: .center)
            
            .padding()
            HStack(alignment: .center, spacing: 10) { Text("Continue with Email")
                    .font(
                        Font.custom("SF Pro", size: 16)
                            .weight(.semibold)
                    )
                .foregroundColor(.white)}
            .padding(0)
            .frame(maxWidth: 380, minHeight: 54, maxHeight: 54, alignment: .center)
            .background(Color(red: 0.97, green: 0.42, blue: 0.25))
            .cornerRadius(14)
            HStack(alignment: .center, spacing: 10) { Text("Continue with Phone")
                    .font(
                        Font.custom("SF Pro", size: 16)
                            .weight(.semibold)
                    )
                .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.16)) }
            .padding(.horizontal, 16)
            .padding(.vertical, 0)
            .frame(maxWidth: 380, minHeight: 54, maxHeight: 54, alignment: .center)
            .cornerRadius(14)
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
            )
            HStack(alignment: .center, spacing: 10) {
                
                ZStack{
                    RoundedRectangle(cornerRadius: 14)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
                    .frame(width: 182,height: 60)
                    Image("google-ic")
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 14)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
                    .frame(width: 182,height:60)
                    Image("apple-ic")
                        
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }
                
                
               
        }
            HStack(alignment: .center, spacing: 10) { Text("If you are creating a new account, \nTerms & Conditions and Privacy Policy will apply.")
                    .font(Font.custom("SF Pro", size: 12))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
                    .frame(maxWidth: .infinity, alignment: .center) }
            .padding(10)
            .frame(maxWidth: .infinity, minHeight: 58, maxHeight: 58, alignment: .center)
            
            
        }
    }
}

#Preview {
    loginOrSignUp()
}
