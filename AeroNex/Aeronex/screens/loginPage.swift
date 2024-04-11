//
//  loginPage.swift
//  checking
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI
import Firebase
struct loginPage: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordVisible = false
    @State private var isLoggedIn = false
    
    var body: some View {
        if isLoggedIn{
           // BookingView()
        } else {
            content
        }
    }
    var content:some View {
        VStack{
            ZStack(alignment: .leading){
                Image("aero")
                    .frame(alignment: .center)
                    .offset(x: 10, y: -60)
                VStack(alignment: .leading){
                    Text("Welcome \n back!")
                        .font(.system(size: 36).weight(.bold))
                    
                }
                .padding(.leading, 20)
            }.padding(.top)
            
            VStack(alignment: .leading){
                Text("Email")
                    .font(.system(size: 16,weight:.medium))
                
                
                    .foregroundColor(.black)
                    .frame(width: 72.312, height: 18.27284, alignment: .topLeading)
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 335.35999, height: 45)
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
                        
                        TextField("Enter your Email", text: $email)
                            .font(
                                .system(size: 13,
                                        weight:.semibold)
                            )
                            .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                            .frame(width: 260, alignment: .leading)
                        
                    }
                }
            }
            
            VStack(alignment: .leading){
                Text("Password")
                    .font(.system( size: 16,weight:.medium))
                
                
                    .frame(width: 72.312, height: 18.27284, alignment: .topLeading)
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 335.35999, height: 45)
                        .background(.white)
                        .cornerRadius(14)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .inset(by: 0.76)
                                .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                        )
                    HStack{
                        Image("ic-key")
                            .frame(width: 18, height: 18)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 2, height: 28)
                            .background(Color(red: 0.87, green: 0.87, blue: 0.87))
                        
                        if isPasswordVisible {
                            TextField("Password", text: $password)
                                .font(
                                    .system(size: 13,
                                            weight:.semibold)
                                )
                                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                                .frame(width: 260, alignment: .leading)
                        } else {
                            SecureField("Password", text: $password)
                                .font(
                                    .system(size: 13,
                                            weight:.semibold)
                                )
                                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                                .frame(width: 230, alignment: .leading)
                        }
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye.fill" : "eye.slash.fill")
                                .foregroundColor(.black)
                                
                        }
                        
                        
                    }
                    
                }
                
                Text("Forgot password?")
                    .font(Font.custom("SF Pro", size: 12))
                    .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                    .offset(x:260)
            }.padding(.top,10)
            Button( action: { Auth.auth().signIn(withEmail: email, password: password) { result,error in if let error = error{
                print (error.localizedDescription) }
                else{
                    isLoggedIn = true
                }
            }}){
                ZStack{
                    Rectangle()
                    
                        .fill(Color.black)
                        .frame(width: 360, height: 45)
                        
                        .cornerRadius(10)
                    Text("LOGIN")
                        .font(Font.custom("SF Pro", size: 16))
                        .foregroundStyle(.white)
                }.padding(.top)
            }
            
        }
    }
    
}
#Preview {
    loginPage()
}
