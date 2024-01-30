//
//  signUp.swift
//  checking
//
//  Created by Devansh Agarwal on 06/01/24.
//

import SwiftUI

struct signUp: View {
    var body: some View {
        VStack(){
            HStack(){
                Image("Line 3")
                .frame(width: 26, height: 12.5)
                
                Spacer()
            
                Text("Sign Up")
                  .font(
                    Font.custom("SF Pro Rounded", size: 36)
                      .weight(.semibold)
                  )
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  .padding(.leading, 20.0)
                  .kerning(1)
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.25))
                  .frame(maxWidth:.infinity,alignment:.leading)
            }
            .padding(.top, 35.0)
            Spacer()
                
            ZStack(){
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 393, height: 766)
                    .background(Color(red: 1, green: 0.98, blue: 0.96))
                    .cornerRadius(50)
                VStack(){
                    Image("undraw_undraw_flying_drone_u3r2_-3-_egfy 1")
                        .padding(.top, 24.0)
                        .padding(.leading,59)
                        .padding(.trailing,87)
                        .frame(width: 247, height: 183)
                                        
                    Text("Username")
                      .font(
                        Font.custom("SF Pro", size: 14.07305)
                          .weight(.medium)
                      )
                      .foregroundColor(.black)
                      .padding(.top, 43.0)
                      .frame(maxWidth: .infinity,alignment: .leading)
                      .padding(.leading,29)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335.35999, height: 40.6063)
                            .background(.white)
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .inset(by: 0.94)
                                    .stroke(Color(red: 0.29, green: 0.5, blue: 1), lineWidth: 1.87066)
                            )
                        Text("aditya22")
                          .font(Font.custom("SF Pro", size: 14))
                          .padding(.leading, 45.0)
                          .kerning(0.48787)
                          .foregroundColor(.black)
                          .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Text("E-Mail")
                      .font(
                        Font.custom("SF Pro", size: 14.07305)
                          .weight(.medium)
                      )
                      .foregroundColor(.black)
                      .padding(.top, 25.0)
                      .frame(maxWidth: .infinity,alignment: .leading)
                      .padding(.leading,29)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335.35999, height: 40.6063)
                            .background(.white)
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .inset(by: 0.94)
                                    .stroke(Color(red: 0.29, green: 0.5, blue: 1), lineWidth: 1.87066)
                            )
                        Text("aditya@gmail.com")
                          .font(Font.custom("SF Pro", size: 14))
                          .padding(.leading, 45.0)
                          .kerning(0.48787)
                          .foregroundColor(.black)
                          .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Text("Password")
                      .font(
                        Font.custom("SF Pro", size: 14.07305)
                          .weight(.medium)
                      )
                      .foregroundColor(.black)
                      .padding(.top, 25.0)
                      .frame(maxWidth: .infinity,alignment: .leading)
                      .padding(.leading,29)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335.35999, height: 40.6063)
                            .background(.white)
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .inset(by: 0.94)
                                    .stroke(Color(red: 0.29, green: 0.5, blue: 1), lineWidth: 1.87066)
                            )
                        HStack{
                            Text("at least 8 characters")
                                .font(
                                    Font.custom("SF Pro", size: 12.19664)
                                        .weight(.light)
                                )
                                .kerning(0.48787)
                                .foregroundColor(.black.opacity(0.26))
                                
                            Spacer()
                            Image("Vector ")
                            .frame(width: 16.76788, height: 12.18189)
                            .background(Color(red: 0.47, green: 0.47, blue: 0.47))
                        }.padding(.horizontal, 45.0).frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Text("License Number")
                      .font(
                        Font.custom("SF Pro", size: 14.07305)
                          .weight(.medium)
                      )
                      .foregroundColor(.black)
                      .padding(.top, 25.0)
                      .frame(maxWidth: .infinity,alignment: .leading)
                      .padding(.leading,29)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335.35999, height: 40.6063)
                            .background(.white)
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .inset(by: 0.94)
                                    .stroke(Color(red: 0.29, green: 0.5, blue: 1), lineWidth: 1.87066)
                            )
                        Text("")
                          .font(Font.custom("SF Pro", size: 14))
                          .padding(.leading, 45.0)
                          .kerning(0.48787)
                          .foregroundColor(.black)
                          .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    
                    HStack(){
                        Image("Line 24")
                        .frame(width: 20, height: 15)
                        .overlay(
                          Rectangle()
                            .stroke(.white, lineWidth: 1)
                        )
                        
                        Text("I agree with Terms and Privacy")
                          .font(Font.custom("Roboto", size: 10))
                          .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                          .frame(width: 157.2, height: 13.19705, alignment: .topLeading)
                    }.padding(.top, 33.0).frame(maxWidth: .infinity,alignment: .leading)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 335, height: 40)
                            .background(Color(red: 0.97, green: 0.42, blue: 0.25))
                        
                            .cornerRadius(10)
                        Text("Sign Up")
                            .font(
                                Font.custom("SF Pro", size: 20)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.white)
                    }.padding(.top,20)
                    
                    Text("I already have an account.  Sign In")
                      .font(
                        Font.custom("SF Pro", size: 12)
                          .weight(.light)
                      )
                      .foregroundColor(.black)
                      .padding(.top,10)
                      .frame(maxWidth: .infinity,alignment: .center)
                    
                    
                    
                    Spacer()
                        .padding()
                }
            }
            
            
        }
    }
}

#Preview {
    signUp()
}
