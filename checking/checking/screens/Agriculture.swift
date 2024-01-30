//
//  Agriculture.swift
//  checking
//
//  Created by Devansh Agarwal on 19/12/23.
//

import SwiftUI

struct Agriculture: View {
    var body: some View {
        VStack(spacing: 0) {
             ZStack() {
               Rectangle()
                 .foregroundColor(.clear)
                 .frame(width: 390, height: 503)
                 .background(
                   AsyncImage(url: URL(string: "https://via.placeholder.com/390x503"))
                 )
               VStack(alignment: .leading, spacing: 0) {
                 HStack(spacing: 95) {
                   HStack(alignment: .bottom, spacing: 8) {
                     ZStack() {

                     }
                     .frame(width: 28, height: 13)
                   }
                 }
                 .padding(EdgeInsets(top: 0, leading: 36, bottom: 0, trailing: 36))
                 .frame(width: 390, height: 46)
               }
               .frame(height: 46)
               Rectangle()
                 .foregroundColor(.clear)
                 .frame(width: 84, height: 36)
                 .cornerRadius(14)
               VStack(alignment: .trailing, spacing: 24) {
                 VStack(alignment: .leading, spacing: 24) {
                   VStack(alignment: .leading, spacing: 32) {
                     VStack(spacing: 8) {
                       Text("Login or sign up")
                         .font(Font.custom("SF Pro", size: 20).weight(.bold))
                         .foregroundColor(Color(red: 0.10, green: 0.11, blue: 0.16))
                       Text("Please select your preferred method\nto continue setting up your account")
                         .font(Font.custom("SF Pro", size: 15))
                         .lineSpacing(20)
                         .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
                     }
                     .frame(maxWidth: .infinity, minHeight: 72, maxHeight: 72)
                     VStack(alignment: .leading, spacing: 10) {
                       VStack(alignment: .leading, spacing: 16) {
                         VStack(alignment: .leading, spacing: 16) {
                           HStack(spacing: 10) {
                             Text("Continue with Email")
                               .font(Font.custom("SF Pro", size: 16))
                               .foregroundColor(.white)
                           }
                           .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                           .background(Color(red: 0.97, green: 0.42, blue: 0.25))
                           .cornerRadius(14)
                           HStack(spacing: 10) {
                             Text("Continue with Phone")
                               .font(Font.custom("SF Pro", size: 16))
                               .foregroundColor(Color(red: 0.10, green: 0.11, blue: 0.16))
                           }
                           .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                           .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                           .cornerRadius(14)
                           .overlay(
                             RoundedRectangle(cornerRadius: 14)
                               .inset(by: 0.50)
                               .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 0.50)
                           )
                         }
                         .frame(maxWidth: .infinity, minHeight: 120, maxHeight: 120)
                         .background(.white)
                       }
                       .frame(maxWidth: .infinity, minHeight: 120, maxHeight: 120)
                       HStack(alignment: .top, spacing: 12) {
                         HStack(spacing: 10) {
                           HStack(spacing: 0) {
                             ZStack() { }
                             .frame(width: 19.31, height: 20)
                           }
                           .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0.69))
                           .frame(width: 20, height: 20)
                         }
                         .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                         .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                         .cornerRadius(14)
                         .overlay(
                           RoundedRectangle(cornerRadius: 14)
                             .inset(by: 0.50)
                             .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 0.50)
                         )
                         HStack(spacing: 10) {
                           HStack(spacing: 0) {

                           }
                           .padding(EdgeInsets(top: 0, leading: 2, bottom: 1.18, trailing: 2))
                           .frame(width: 20, height: 20)
                         }
                         .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                         .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                         .cornerRadius(14)
                         .overlay(
                           RoundedRectangle(cornerRadius: 14)
                             .inset(by: 0.50)
                             .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 0.50)
                         )
                       }
                       .frame(maxWidth: .infinity)
                     }
                     .frame(maxWidth: .infinity, minHeight: 184, maxHeight: 184)
                   }
                   .frame(maxWidth: .infinity, maxHeight: .infinity)
                   HStack(spacing: 10) {
                     Text("If you are creating a new account, \nTerms & Conditions and Privacy Policy will apply.")
                       .font(Font.custom("SF Pro", size: 12))
                       .lineSpacing(20)
                       .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
                   }
                   .padding(10)
                   .frame(maxWidth: .infinity, minHeight: 58, maxHeight: 58)
                 }
                 .frame(maxWidth: .infinity, minHeight: 380, maxHeight: 380)
               }
               .padding(16)
               .frame(width: 390, height: 484)
               .background(Color(red: 0.98, green: 0.98, blue: 0.98).opacity(0.93))
               .cornerRadius(13)
               VStack(spacing: 24) {
                 VStack(spacing: 24) {
                   VStack(spacing: 8) {
                     Text("Welcome to App")
                       .font(Font.custom("SF Pro", size: 24).weight(.bold))
                       .foregroundColor(Color(red: 0.10, green: 0.11, blue: 0.16))
                     Text("Here’s a good place for a brief overview\nof the app or it’s key features")
                       .font(Font.custom("SF Pro", size: 15))
                       .lineSpacing(20)
                       .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
                   }
                   .frame(height: 77)
                 }
                 VStack(spacing: 8) {
                   HStack(alignment: .top, spacing: 6) {
                     Ellipse()
                       .foregroundColor(.clear)
                       .frame(width: 8, height: 8)
                       .background(Color(red: 0, green: 0.48, blue: 1))
                     Ellipse()
                       .foregroundColor(.clear)
                       .frame(width: 8, height: 8)
                       .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                     Ellipse()
                       .foregroundColor(.clear)
                       .frame(width: 8, height: 8)
                       .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                   }
                 }
                 .padding(8)
                 .frame(height: 24)
               }
               .frame(width: 390)
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
                       .background(Color(red: 0, green: 0.48, blue: 1))
                       .cornerRadius(14)
                     }
                     .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                   }
                   .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                   .frame(maxWidth: .infinity, minHeight: 54, maxHeight: 54)
                 }
                 .frame(height: 54)
               }
               HStack(spacing: 0) {
                 Rectangle()
                   .foregroundColor(.clear)
                   .frame(width: 134, height: 5)
                   .background(.black)
                   .cornerRadius(100)
               }
               .padding(EdgeInsets(top: 21, leading: 128, bottom: 8, trailing: 128))
               .frame(width: 390, height: 34)
             }
             .frame(width: 393, height: 852)
             .background(.white)
           }
           .frame(width: 393, height: 852)
           .background(.white);
    }
}

#Preview {
    Agriculture()
}
