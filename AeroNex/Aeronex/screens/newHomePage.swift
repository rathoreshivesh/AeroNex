//
//  newHomePage.swift
//  checking
//
//  Created by Devansh Agarwal on 04/02/24.
//

import SwiftUI

struct newHomePage: View {
    @Binding var pageState: String
    @Binding var previousPageState: String
    @StateObject var bookData = book()
    @ObservedObject var userModel: usersModel
    @ObservedObject var bookingModel: bookingModel
    
    @State private var isPageLoading: Bool = false
    
    
    
    
    @State private var isLogged: Bool = UserDefaults.standard.bool(forKey: "LoginState")
    @State private var loggedUserID: String = UserDefaults.standard.string(forKey: "LoggedUserID") ?? ""
    @State private var loggedUserName: String = UserDefaults.standard.string(forKey: "LoggedUserName") ?? "Preview"
    @State private var loggedUserEmail: String = UserDefaults.standard.string(forKey: "LoggedUserEmail") ?? ""
    
    
  
    var body: some View {
        NavigationStack{
           
                
                VStack(spacing:25){
                   
                    
                    VStack(alignment:.leading){
                        if(isLogged){
                                                Text("Hello,\(loggedUserName)!")
                                                    .font(.system(size: 32, weight: .bold))
                                            }
                                            else{
                                                Text("Hello,User!")
                                                    .font(.system(size: 32, weight: .bold))
                                            }
                    }.frame(width:360,alignment: .leading).padding(.leading)
                    
                   // searchBar()
                    ScrollView{
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 360, height: 204)
                            .overlay(
                                Image("picHome")
                                    .resizable()
                                    .frame(width: 360, height: 204)
                                    .opacity(0.5)
                            )
                        
                            .cornerRadius(4)
                        
                        VStack(alignment: .leading,spacing:20){
                            //Book a Drone Pilot
                            Text("Book a Drone Pilot").font(.system(size: 20, weight: .regular))
                            
                            Text("Get aerial imagery on demand ").font(.system(size: 15, weight: .regular))
                            Text("Book a drone pilot and unlock the power of drone technology with AeroNex.").font(.system(size: 10, weight: .regular))
                            Button(action:{
                                withAnimation{
                                    pageState = "PilotSelectionPage"
                                }
                            }) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 145, height: 40)
                                    .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                                
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Book Now")
                                            .font(
                                                Font.custom("SF Pro", size: 20)
                                                    .weight(.semibold)
                                            )
                                            .foregroundColor(.white)
                                    )
                            }
                        }.padding()
                        
                        
                    }.padding(.horizontal)
                    /*
                    VStack(alignment:.leading){
                        //Explore
                        Text("Explore").font(.system(size: 24, weight: .medium)).tracking(1).multilineTextAlignment(.center)
                        VStack{
                            HStack{
                                
                                VStack{
                                    Button(action:{
                                        withAnimation{
                                            pageState = "PilotSelectionPage"
                                        }
                                    }){
                                        Image("farmerBro")
                                            .frame(width: 100,height: 100)
                                    }
                                    Text("Agriculture").font(.system(size: 15, weight: .medium))
                                }
                                Spacer()
                                VStack(){
                                    Button(action:{
                                        withAnimation{
                                            pageState = "PilotSelectionPage"
                                        }
                                    }) {
                                        Image("infraBro")
                                            .frame(width: 100,height: 100)
                                    }
                                    Text("Inspection").font(.system(size: 15, weight: .medium))
                                }
                            }.padding(.horizontal,30)
                            HStack{
                                VStack(){
                                    Button(action:{
                                        withAnimation{
                                            pageState = "PilotSelectionPage"
                                        }
                                    }) {
                                        Image("homePhoto")
                                            .resizable()
                                            .frame(width: 100,height: 100)
                                    }
                                    Text("Photography").font(.system(size: 15, weight: .medium))
                                        
                                        
                                }
                                Spacer()
                                VStack{
                                    Button(action:{
                                        withAnimation{
                                            pageState = "PilotSelectionPage"
                                        }
                                    }) {
                                        Image("surveyHome")
                                            .resizable()
                                            .frame(width: 100,height: 100)
                                    }
                                    Text("Surveillance").font(.system(size: 15, weight: .medium))
                                }
                            }.padding(.horizontal,30)
                        }
                        
                    }.padding()
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 360, height: 115)
                            .background(Color(.rect))
                        
                            .cornerRadius(4)
                        
                        HStack(spacing:20){
                            Image("noBookingImg")
                                .resizable()
                                .frame(width:125,height: 100)
                            VStack(alignment:.leading,spacing:3){
                                Text("No upcoming booking").font(.system(size: 16, weight: .regular))
                                Text("Book a drone pilot").font(.system(size: 12, weight: .regular))
                                    .foregroundColor(.gray)
                            }
                        }
                    }.padding(.bottom)
                    /*
                        VStack(alignment:.leading,spacing:20){
                        Text("Recommended Experts").font(.system(size: 24, weight: .medium)).tracking(1).multilineTextAlignment(.center)
                            .padding()
                            ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                                                    
                                   homePagePilotCard()
                                    
                                    homePagePilotCard()
                            }.padding(.leading)
                            }
                    }
                     */
                    
                        VStack(alignment:.leading,spacing:20){
                            Text("Recommended by your location").font(.system(size: 20, weight: .medium)).tracking(1).multilineTextAlignment(.center)
                                .padding(.leading)
                            ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                ForEach(pilotsData)
                                { pilot in
                                    homePagePilotCard(pilotsData:pilot)
                                                           .padding()
                                                   }
                                  
                                    
                                   
                            }.padding(.leading)
                            }
                        }
                        */
                        VStack(alignment:.leading,spacing:60){
                                       
                                      
                
                                           VStack(alignment:.leading,spacing:20){
                                               Button(action:{
                                                   withAnimation{
                                                       pageState = "UserProfilePage"
                                                   }
                                               }) {
                                                   HStack(spacing:150){
                                                       VStack(alignment:.leading,spacing:3){
                                                           Text("Manage Account").font(.system(size: 18, weight: .semibold)).foregroundColor(.black)
                                                               .frame(width: 150,alignment: .leading)
                                                           Text("Change Email,Password....").font(.system(size: 16, weight: .medium)).foregroundColor(.gray)
                                                               .frame(width:200,alignment: .leading)
                                                       }
                                                       Image(systemName: "arrow.forward")
                                                           .resizable()
                                                           .foregroundColor(.black)
                                                       
                                                           .frame(width:20,height: 16)
                                                   }
                                               }
                                               Button(action:{
                                                   withAnimation{
                                                       pageState = "BookingPage"
                                                   }
                                               }) {
                                                   HStack(spacing:170){
                                                       VStack(alignment:.leading,spacing:3){
                                                           Text("History").font(.system(size: 18, weight: .semibold)).foregroundColor(.black)
                                                           Text("View Bookings").font(.system(size: 16, weight: .medium)).foregroundColor(.gray).frame(width:180,alignment: .leading)
                                                       }
                                                       Image(systemName: "arrow.forward")
                                                           .resizable()
                                                           .foregroundColor(.black)
                                                           .frame(width:20,height: 16)
                                                   }
                                               }
                                           }
                        }.padding(.top,40)
                                       Spacer()
                                   }
                     
                    
                    
                    
                    Spacer()
                    
                    
                    
                    
                    
                    
                    
                }.navigationTitle("AeroNex")
                    .navigationBarTitleDisplayMode(.inline)
                   
                        
            }
           
        }
    
        
    
}
struct previewHomePage: View {
    
    @State var selectedItems: String = ""
    @StateObject private var userModel = usersModel()
    @StateObject private var bookingsModel=bookingModel()
    
    var body: some View {
        newHomePage(pageState: $selectedItems, previousPageState: $selectedItems, userModel: userModel, bookingModel: bookingsModel)
    }
}

#Preview {
   previewHomePage()
}
