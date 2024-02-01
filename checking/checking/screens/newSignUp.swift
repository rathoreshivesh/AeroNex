//
//  newSignUp.swift
//  checking
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI

struct newSignUp: View {
    var body: some View {
        
        ScrollView{
            
                ZStack(alignment: .leading){
                    Image("aero")
                        .frame(alignment: .center)
                        .offset(x: 10, y: -60)
                    VStack(alignment: .leading){
                        Text("Create an \nAccount!")
                            .font(.system(size: 36).weight(.bold))
                        
                    }
                    .padding(.leading, 20)
                }.padding(.top)
                
                VStack(alignment: .leading){
                    Text("Username")
                        .font(
                            Font.custom("SF Pro", size: 16)
                                .weight(.medium)
                        )
                        .foregroundColor(.black)
                        .frame(width: 100, height: 18.27284, alignment: .topLeading)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 360, height: 40)
                            .background(.white)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .inset(by: 0.76)
                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                            )
                        HStack{
                            Image("ic-user1")
                                .frame(width: 18, height: 18)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 2, height: 28)
                                .background(Color(red: 0.87, green: 0.87, blue: 0.87))
                            
                        }.offset(x:-140)
                    }
                }
                
                VStack(alignment: .leading){
                    Text("Email")
                        .font(
                            Font.custom("SF Pro", size: 16)
                                .weight(.medium)
                        )
                        .foregroundColor(.black)
                        .frame(width: 72.312, height: 18.27284, alignment: .topLeading)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 360, height: 40)
                            .background(.white)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .inset(by: 0.76)
                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                            )
                        HStack{
                            Image("ic-envelope")
                                .frame(width: 18, height: 18)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 2, height: 28)
                                .background(Color(red: 0.87, green: 0.87, blue: 0.87))
                            
                        }.offset(x:-140)
                    }
                }
                
                VStack(alignment: .leading){
                    Text("Password")
                        .font(
                            Font.custom("SF Pro", size: 16)
                                .weight(.medium)
                        )
                        .foregroundColor(.black)
                        .frame(width: 72.312, height: 18.27284, alignment: .topLeading)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 360, height: 40)
                            .background(.white)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .inset(by: 0.76)
                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                            )
                        HStack{
                            Group{
                                Image("ic-key")
                                    .frame(width: 18, height: 18)
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 2, height: 28)
                                    .background(Color(red: 0.87, green: 0.87, blue: 0.87))
                                
                            }.offset(x:-127)
                            Image("ic-eye")
                                .frame(width: 18, height: 14.4)
                                .offset(x:120)
                        }
                        
                    }
                    Text("Forgot password?")
                        .font(Font.custom("SF Pro", size: 12))
                        .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                        .offset(x:260)
                }.padding(.top,10)
                
                VStack(alignment: .leading){
                    Text("License Number")
                        .font(
                            Font.custom("SF Pro", size: 16)
                                .weight(.medium)
                        )
                        .foregroundColor(.black)
                        .frame(width: 150, height: 18.27284, alignment: .topLeading)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 360, height: 40)
                            .background(.white)
                            .cornerRadius(14)
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .inset(by: 0.76)
                                    .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                            )
                        HStack{
                            Image("ic-license")
                                .frame(width: 18, height: 18)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 2, height: 28)
                                .background(Color(red: 0.87, green: 0.87, blue: 0.87))
                            
                        }.offset(x:-140)
                    }
                }
                
                Spacer()
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 365, height: 40)
                    .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                
                    .cornerRadius(10)
                    .overlay(
                        Text("Sign Up")
                            .font(
                                Font.custom("SF Pro", size: 18)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.white)
                    ).padding(.top)
                
            }
        
        
    }
}

#Preview {
    newSignUp()
}
