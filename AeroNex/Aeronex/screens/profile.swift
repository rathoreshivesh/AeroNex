//
//  profile.swift
//  Aeronex
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI

struct profile: View {
    @Binding var pageState: String
    @Binding var previousPageState: String
    @State private var isPageLoading: Bool = false
    
    
    
    
    @State private var isLogged: Bool = UserDefaults.standard.bool(forKey: "LoginState")
    @State private var loggedUserID: String = UserDefaults.standard.string(forKey: "LoggedUserID") ?? ""
    @State private var loggedUserName: String = UserDefaults.standard.string(forKey: "LoggedUserName") ?? "Preview"
    @State private var loggedUserEmail: String = UserDefaults.standard.string(forKey: "LoggedUserEmail") ?? ""
    
    
    
    var body: some View {
        NavigationStack{
                  VStack{
                      VStack{
                          VStack{
                              ZStack {
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 324, height: 144)
                                      .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                                      .cornerRadius(10)
                                      .offset(x: 0, y: 0)
                                  VStack(alignment:.leading){
                                  Text("David Bekham")
                                      .font(
                                        Font.custom("SF Pro Rounded", size: 24)
                                            .weight(.semibold)
                                      )
                                      .foregroundColor(.black)
                                      
                                  Text("davidbeck@gmail.com")
                                      .font(Font.custom("SF Pro Rounded", size: 16).weight(.semibold))
                                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                      VStack{
                                          
                                          Button(action:{
                                              withAnimation{
                                                  pageState = "UserProfilePage"
                                              }
                                          }){
                                          ZStack{
                                              
                                              Rectangle()
                                                  .foregroundColor(.clear)
                                                  .frame(width: 267, height: 40)
                                                  .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                                                  .cornerRadius(10)
                                              HStack{
                                                  Text("PROFILE")
                                                      .font(
                                                        Font.custom("SF Pro", size: 16)
                                                            .weight(.semibold)
                                                      )
                                                      .multilineTextAlignment(.center)
                                                      .foregroundColor(.white)
                                                  Image("profilePencil")
                                                      .resizable()
                                                      .frame(width:20,height: 20)
                                              }
                                              
                                          }
                                      }
                                      }
                                  }
                              }
                              .padding()
                          }
                          
                          VStack{
                              Button(action:{
                                  withAnimation{
                                      pageState = "BookingPage"
                                  }
                              }){
                                  HStack{
                                      Image("ic-clock")
                                          .frame(width: 18, height: 18)
                                      
                                      // bookings()
                                      // .navigationBarBackButtonHidden(true)
                                      // .navigationBarItems(leading: btnBack)
                                      
                                      Text("Booking History")
                                          .font(
                                            Font.custom("SF Pro", size: 17)
                                                .weight(.semibold)
                                          )
                                          .lineSpacing(22)
                                          .multilineTextAlignment(.leading)
                                          .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                                      
                                          .padding(10)
                                      
                                      Spacer()
                                      
                                      Image("line2")
                                          .frame(width: 17, height: 7)
                                          .multilineTextAlignment(.trailing)
                                  }.navigationBarBackButtonHidden(true)}
                              .padding(.horizontal,30)
                              Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 366, height: 1)
                                  .background(Color(red: 0.59, green: 0.59, blue: 0.59))
                              HStack{
                                  Image("ic-lang")
                                      .frame(width: 22.5, height: 18)
                                  Text("Language")
                                      .font(
                                        Font.custom("SF Pro", size: 17)
                                            .weight(.semibold)
                                      )
                                      .multilineTextAlignment(.trailing)
                                      .foregroundColor(.black)
                                      .padding(10)
                                  Spacer()
                                  Image("line2")
                                      .frame(width: 17, height: 7)
                              }.padding(.horizontal,30)
                              Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 366, height: 1)
                                  .background(Color(red: 0.59, green: 0.59, blue: 0.59))
                              HStack{
                                  Image("ic-info")
                                      .frame(width: 18, height: 18)
                                  NavigationLink("Terms of Service "){
                                      //terms()
                                      //navigationBarButtonHidden(true)
                                  }
                                  .font(
                                    Font.custom("SF Pro", size: 17)
                                        .weight(.semibold)
                                  )
                                  .multilineTextAlignment(.trailing)
                                  .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                                  
                                  .padding(10)
                                  Spacer()
                                  Image("line2")
                                      .frame(width: 17, height: 7)
                                  
                              }.padding(.horizontal,30)
                              Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 366, height: 1)
                                  .background(Color(red: 0.59, green: 0.59, blue: 0.59))
                              HStack{
                                  
                                  Image("ic-shield")
                                      .frame(width: 18, height: 18)
                                  Text("Privacy Policy ")
                                      .font(
                                        Font.custom("SF Pro", size: 17)
                                            .weight(.semibold)
                                      )
                                      .multilineTextAlignment(.trailing)
                                      .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                                  
                                      .padding(10)
                                  Spacer()
                                  Image("line2")
                                      .frame(width: 17, height: 7)
                              }.padding(.horizontal,30)
                              Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 366, height: 1)
                                  .background(Color(red: 0.59, green: 0.59, blue: 0.59))
                              HStack{
                                  Image("ic-serviceArea")
                                      .frame(width: 20.25, height: 18)
                                  Text("Service Area")
                                      .font(
                                        Font.custom("SF Pro", size: 17)
                                            .weight(.semibold)
                                      )
                                      .multilineTextAlignment(.trailing)
                                      .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                                      .padding(10)
                                  Spacer()
                                  Image("line2")
                                      .frame(width: 17, height: 7)
                                  
                              }.padding(.horizontal,30)
                          }
                          
                      }
                      Spacer()
    
                      HStack{
                          Image("logOut")
                              
                          Text("Sign Out of AeroNex")
                              .font(
                                Font.custom("SF Pro", size: 17)
                                    .weight(.semibold)
                              )
                              .multilineTextAlignment(.trailing)
                              .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                          Spacer()
                          
                          Image("line2")
                              .frame(width: 17, height: 7)
                      }.padding(.horizontal,30)
                          .padding(.bottom,20)
                      
                  }
              }
            
    }
}
struct previewProfile: View {
   
   
    @State var selectedItems: String = ""
 
    
    var body: some View {
        profile(pageState: $selectedItems, previousPageState: $selectedItems)
    }
}

#Preview {
    previewProfile()
}
