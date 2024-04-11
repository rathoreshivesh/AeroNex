//
//  bookings.swift
//  checking
//
//  Created by Devansh Agarwal on 29/01/24.
//

import SwiftUI

struct bookings: View {
    @Binding var pageState: String
    @Binding var previousPageState: String
    @ObservedObject var userModel: usersModel
    @ObservedObject var bookingModel: bookingModel
    
    @State private var isPageLoading: Bool = false
    @State private var isLogged: Bool = UserDefaults.standard.bool(forKey: "LoginState")
    @State private var loggedUserID: String = UserDefaults.standard.string(forKey: "LoggedUserID") ?? ""
    @State private var loggedUserName: String = UserDefaults.standard.string(forKey: "LoggedUserName") ?? ""
    @State private var loggedUserEmail: String = UserDefaults.standard.string(forKey: "LoggedUserEmail") ?? ""
    
    func formattedDate(for date: Date) -> String {
           let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "dd MMMM yyyy, EEEE"
           return dateFormatter.string(from: date)
       }
    func formattedTime(for time: Date) -> String {
           let timeFormatter = DateFormatter()
           timeFormatter.dateFormat = "h:mm a"
           return timeFormatter.string(from: time)
       }
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 30)
                        .background(Color(red: 0.23, green: 0.83, blue: 0.65))
                    
                    /*VStack(alignment: .leading)
                    {
                        Text("Bookings")
                            .font(
                                Font.custom("SF Pro Rounded", size: 36)
                                    .weight(.semibold)
                            )
                            .kerning(1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        Text("Manage all your bookings")
                            .font(
                                Font.custom("SF Pro Rounded", size: 15)
                                    .weight(.semibold)
                            )
                            .kerning(1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.89, green: 0.89, blue: 0.89))
                    }.frame(maxWidth: .infinity,alignment: .leading)
                        .padding()
                     */
                }
                
                searchBarBookings()
                ScrollView{
                    if(!bookingModel.Bookings.isEmpty){
                        ForEach(bookingModel.Bookings, id: \.id){ booking in
                            VStack{
                                VStack(alignment:.leading){
                                    Text("Tower Inspection")
                                        .font(.system(size: 17, weight: .bold, design: .rounded))
                                        .foregroundColor(.black)
                                        .padding(.bottom,5)
                                    HStack{
                                        VStack(alignment:.center){
                                            Text("Date:\n\(formattedDate(for:booking.date))")
                                                .font(.system(size: 15, weight: .regular, design: .rounded)).tracking(1).multilineTextAlignment(.center)
                                                .foregroundStyle(.black)
                                            //Time: 10:00 am
                                            Text("Time:\n \(formattedTime(for:booking.time))").font(.system(size: 15, weight: .regular, design: .rounded)).tracking(1).multilineTextAlignment(.center)
                                                .foregroundStyle(.black)
                                        }.padding(.top)
                                        
                                        Spacer()
                                        
                                        VStack{
                                            ZStack{
                                                Rectangle()
                                                    .foregroundColor(.clear)
                                                    .frame(width: 100, height: 23)
                                                    .background(.white)
                                                    .cornerRadius(5)
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 5)
                                                            .inset(by: 1)
                                                            .stroke(Color(red: 0.28, green: 0.69, blue: 0.46), lineWidth: 2)
                                                        
                                                    )
                                                
                                                
                                                Text("\(booking.status)")
                                                    .font(
                                                        Font.custom("SF Pro Rounded", size: 12)
                                                            .weight(.semibold)
                                                    )
                                                    .kerning(1)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color(red: 0.27, green: 0.7, blue: 0.46))
                                                    .frame(width: 100, height: 11.5, alignment: .center)
                                            }
                                            Text("₹\(booking.price)")
                                                .font(
                                                    Font.custom("SF Pro Rounded", size: 16)
                                                        .weight(.bold)
                                                )
                                            
                                                .foregroundColor(.black)
                                                .padding(.top)
                                            
                                            
                                        }
                                        
                                    }
                                }.padding()
                            }
                            Divider()
                        }
                    }
                }
            }.navigationTitle("Bookings")
                .navigationBarTitleDisplayMode(.large)
        }
        .task {
            do{
                try! await bookingModel.getBooking(userId: Int(loggedUserID)!)
            }
        }
        
    }
}
struct previewBookingPage: View {
    
    @State var selectedItems: String = ""
    @StateObject private var userModel = usersModel()
    @StateObject private var bookingsModel=bookingModel()
    
    var body: some View {
        bookings(pageState: $selectedItems, previousPageState: $selectedItems, userModel: userModel, bookingModel: bookingsModel)
    }
}

#Preview {
   previewBookingPage()
}
