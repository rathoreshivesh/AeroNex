//
//  WhoCard.swift
//  AeroNex
//
//  Created by user2 on 27/01/24.
//

import SwiftUI

struct WhoCard: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            ZStack(alignment: .leading){
                Image("aero")
                    .frame(alignment: .center)
                    .offset(x: 10, y: -60)
                VStack(alignment: .leading){
                    Text("Need \na drone? Try")
                        .font(.system(size: 36).weight(.bold))
                    Text("AERONEX")
                        .font(.system(size: 40).weight(.black))
                        .padding(.bottom, 10)
                        .foregroundColor(.darkBlue)
                }
                .padding(.leading, 20)
            }
            Text("Who are you?")
                .font(.system(size: 36).bold())
            Button(action: {}) {
                Text("Client")
                  .font(
                    Font.custom("SF Pro", size: 16)
                      .weight(.semibold)
                  )
                  .foregroundColor(.white)
            }
            .padding(0)
            .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54, alignment: .center)
            .background(Color(red: 0.1, green: 0.11, blue: 0.12))
            .cornerRadius(10)
            .padding([.leading, .trailing])
            
            
            Button(action: {}) {
                Text("Pilot")
                  .font(
                    Font.custom("SF Pro", size: 16)
                      .weight(.semibold)
                  )
                  .foregroundColor(.primaryBlack)
            }
//            .padding(0)
            .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54, alignment: .center)
            .cornerRadius(10)
            .overlay(
              RoundedRectangle(cornerRadius: 10)
                .inset(by: 0.5)
                .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
            )
            .padding([.leading, .trailing])
            VStack{
                Text("If you are creating a new account,")
                HStack(spacing: 0){
                    Button(action: {}) {
                        Text("Terms & Conditions")
                            .underline()
                    }
                    Text(" and")
                    Button(action: {}) {
                        Text(" Privacy Policy")
                            .underline()
                    }
                    Text(" will apply.")
                }
            }
            .font(Font.custom("SF Pro", size: 12))
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
            .edgesIgnoringSafeArea(.all)
            .ignoresSafeArea()
            .frame(width: 338, height: 40, alignment: .center)
            .offset(y: 25)
        }
        /*.offset(y: 25)*/
        
    }
}

#Preview {
    WhoCard()
}
