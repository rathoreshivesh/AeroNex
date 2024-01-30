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
            
            aeroImg().padding(.top,25)
            
            Text("Login Or Sign up")
                .font(.system(size: 36).bold())
            
            Button(action: {}) {
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 360, height: 50)
                .background(Color(red: 0.1, green: 0.11, blue: 0.12))

                .cornerRadius(10)
                .overlay(
                    Text("Continue with Email")
                        .font(
                            Font.custom("SF Pro", size: 18)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(.white)
                            )
            }
            
            Button(action: {}) {
                RoundedRectangle(cornerRadius: 10)
                .inset(by: 0.5)
                .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
                .frame(width: 360, height: 50)

                .overlay(
                    Text("Continue With Phone")
                        .font(
                            Font.custom("SF Pro", size: 18)
                                            .weight(.semibold)
                                    )
                        .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.16))


                            )
            }
            HStack(alignment: .center, spacing: 10) {
                
                ZStack{
                    RoundedRectangle(cornerRadius: 14)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
                    .frame(width: 172,height: 50)
                    Image("google-ic")
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 14)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
                    .frame(width: 182,height:50)
                    Image("ic-Apple")
                        .frame(width: 40, height: 40)
                    
                }
                
                
               
        }
            termsAndCondition()
            
        }
    }
}

#Preview {
    loginOrSignUp()
}
