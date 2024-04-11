//
//  pilotBookingDetails.swift
//  AeroNex_Pilot
//
//  Created by Devansh Agarwal on 29/02/24.
//

//
//  bookingDetails.swift
//  checking
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI

struct bookingDetails: View {
    @Binding var pageState: String
    @Binding var previousPageState: String
    @ObservedObject var userModel: usersModel
    @ObservedObject var bookingModel: bookingModel
    
    @State private var isPageLoading: Bool = false
    
    
    
    
    
    
    
    
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 15)
                        .background(Color(red: 0.23, green: 0.83, blue: 0.65))
                    
                }
                ScrollView{
                    
                   // HStack{
                        VStack{
                            Text("Status")
                                .font(Font.custom("SF Pro", size: 14))
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                            Text("UPCOMING")
                                .font(
                                    Font.custom("SF Pro", size: 17)
                                        .weight(.bold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                        }
                        Spacer()
                    
                    Divider()
                    
                
                    VStack(alignment: .leading){
                        Text("Details").font(.system(size: 17, weight: .bold))
                            .kerning(1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                        
                        HStack(){
                            VStack{
                                //Date
                                Text("Date").font(.system(size: 14, weight: .regular)).tracking(1).multilineTextAlignment(.center)
                                //02 Feb 2024
                                Text("02 Feb 2024").font(.system(size: 16, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.11, blue: 0.12, alpha: 1))).tracking(1).multilineTextAlignment(.center)
                            }
                            Spacer()
                            
                            VStack{
                                //Time
                                Text("Time ").font(.system(size: 14, weight: .regular)).tracking(1).multilineTextAlignment(.center)
                                //10:00 am
                                Text("10:00 am").font(.system(size: 16, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.11, blue: 0.12, alpha: 1))).tracking(1).multilineTextAlignment(.center)
                            }
                        }.padding(.top,5)
                        
                        VStack(alignment:.leading){
                            Text("Description").font(.system(size: 14, weight: .regular)).tracking(1).multilineTextAlignment(.center)
                            //lorem ipsum fjuivjj slkjvn...
                            Text("lorem ipsum fjuivjj  slkjvnivnvin dsvnsiv vc djnv ijvnj vvv dnvnv gefijgvneriuvnivn fdjnvefrvvsvsvsvkndsjkhvjsknv dsvndvn").font(.system(size: 16, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.11, blue: 0.12, alpha: 1))).tracking(1)
                        }.padding(.top)
                        
                    }.padding(.horizontal)
    
                    Divider()
                    
                    
                    VStack(alignment: .leading){
                        Text("Location").font(.system(size: 17, weight: .bold))
                            .kerning(1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                        
                        Text("250,Agricultural Land,Barewal, Punjab, India - 142045")
                            .font(
                                Font.custom("SF Pro", size: 16)
                                    .weight(.bold)
                            )
                            .kerning(1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                            .padding(.top,5)
                            .frame(maxWidth: .infinity)
                        
                    }
                    .padding(.horizontal)
                    
                    
                    
                    
                    Divider()
                    VStack(alignment: .leading){
                        Text("Pilot").font(.system(size: 17, weight: .bold))
                            .kerning(1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                        HStack{
                            Text("Name")
                                .font(Font.custom("SF Pro", size: 14))
                                .kerning(1)
                            
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .padding(.top,5)
                            Spacer()
                            Text("David Beckham")
                                .font(
                                    Font.custom("SF Pro", size: 14)
                                        .weight(.bold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                        }.padding(.top,5)
                        HStack{
                            Text("Email")
                                .font(Font.custom("SF Pro", size: 14))
                                .kerning(1)
                            
                                .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                .padding(.top,5)
                            Spacer()
                            Text("david@gmail.com")
                                .font(
                                    Font.custom("SF Pro", size: 14)
                                        .weight(.bold)
                                )
                                .kerning(1)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                        }
                    }.padding()
                    Divider()
                    VStack(alignment:.leading){
                        Text("Cost").font(.system(size: 17, weight: .bold))
                            .foregroundColor(Color(red: 0.23, green: 0.83, blue: 0.65))
                        HStack(){
                            //Service Fee
                            Text("Service Fee").font(.system(size: 16, weight: .regular)).tracking(1).multilineTextAlignment(.center)
                            Spacer()
                            //₹8,000
                            Text("₹").font(.system(size: 14, weight: .bold)).tracking(1) + Text("8,000").font(.system(size: 20, weight: .semibold)).tracking(1)
                        }.padding(.top)
                        
                        
                    }.padding()
                    
                    Spacer()
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 365, height: 49)
                        .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                    
                        .cornerRadius(10)
                        .overlay(
                            Text("Cancel Booking")
                                .font(
                                    Font.custom("SF Pro", size: 24)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.white)
                        )
                    
                }
            }.navigationTitle("Booking Details")
                //.toolbarTitleDisplayMode(.large)
            
        }
    }
}
struct previewBookingDetailsPage: View {
    
    @State var selectedItems: String = ""
    @StateObject private var userModel = usersModel()
    @StateObject private var bookingsModel=bookingModel()
    
    var body: some View {
        bookingDetails(pageState: $selectedItems, previousPageState: $selectedItems, userModel: userModel, bookingModel: bookingsModel)
    }
}

#Preview {
   previewBookingDetailsPage()
}
