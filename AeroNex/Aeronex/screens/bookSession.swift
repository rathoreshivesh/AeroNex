//
//  bookSession.swift
//  Aeronex
//
//  Created by Devansh Agarwal on 04/03/24.
//

import SwiftUI
import MapKit
//import CoreLocation

struct BookingView: View {
    
    @Binding var pageState: String
    @Binding var previousPageState: String
    @Binding var bookingId: Int
    @Binding var pilotId: Int
    @ObservedObject var userModel: usersModel
    @ObservedObject var bookingModel: bookingModel
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion()
    
    @State private var address = ""
    @State private var selectedDate = Date.now
    @State private var selectedTime = Date.now
    @State private var notes = ""
    
    
    @State private var isLogged: Bool = UserDefaults.standard.bool(forKey: "LoginState")
    @State private var loggedUserID: String = UserDefaults.standard.string(forKey: "LoggedUserID") ?? ""
    @State private var loggedUserName: String = UserDefaults.standard.string(forKey: "LoggedUserName") ?? ""
    @State private var loggedUserEmail: String = UserDefaults.standard.string(forKey: "LoggedUserEmail") ?? ""

    func createBooking() async{
        let pilotPrice = userModel.myPilot[0].price
        let pilotName = userModel.myPilot[0].fullName
//        let geoCoder = CLGeocoder()
//        geoCoder.geocodeAddressString(address) { (placemarks, error) in
//            guard
//                let placemarks = placemarks,
//                let latitude = placemarks.first?.location?.coordinate
//            else {
//                print("Error")
//                return
//            }
//            
//            try? await bookingModel.addBooking(userId: Int(loggedUserID)!, address: address, lattitude: String(latitude.latitude), longitude: String(latitude.longitude), date: selectedDate, time: selectedTime, notes: notes, price: pilotPrice, clientName: loggedUserName,clientId: loggedUserEmail, status: "Invited",pilotId:pilotId, pilotName: pilotName)
//            try? await bookingModel.getActiveBookings(userId: Int(loggedUserID)!)
//            try? await bookingModel.getBooking(userId: Int(loggedUserID)!)
//        }
        
        try? await bookingModel.addBooking(userId: Int(loggedUserID)!, address: address, lattitude: "", longitude: "", date: selectedDate, time: selectedTime, notes: notes, price: pilotPrice, clientName: loggedUserName,clientId: loggedUserEmail, status: "Invited",pilotId:pilotId, pilotName: pilotName)
        try? await bookingModel.getActiveBookings(userId: Int(loggedUserID)!)
        try? await bookingModel.getBooking(userId: Int(loggedUserID)!)

    }
    
    
    func cancelBooking() async {
        
    }
    
    var body: some View {
        NavigationStack {
            VStack(){
                
                landmarkCard2().padding()
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .inset(by: 1)
                        .stroke(.black, lineWidth: 1)
                        .frame(width: 360,height:60)
                        
                        
                    HStack{
                        Image("dropPin")
                        TextField("Enter your Location", text: $address)
                            .font(
                                .system(size: 13,
                                        weight:.semibold)
                            )
                            .foregroundColor(Color(.black))
                            .frame(width: 320, alignment: .leading)
                    }
                        
                    
                }
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .inset(by: 1)
                        .stroke(.black, lineWidth: 1)
                        .frame(width: 360,height:60)
                        .foregroundColor(.clear)
    
                    HStack(){
                        DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                            .padding()
                    }.padding(.horizontal,25)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .inset(by: 1)
                        .stroke(.black, lineWidth: 1)
                        .frame(width: 360,height:60)
                        .foregroundColor(.clear)
    
                    HStack(){
                        DatePicker("Select Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                            .padding()
                    }.padding(.horizontal,25)
                }

                Spacer()
                Text("Notes")
                    .font(
                        .system(size: 16,
                                weight:.bold)
                    )
                    .foregroundColor(Color(.black))
                    .frame(width:360,alignment: .leading)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .inset(by: 1)
                        .stroke(.black, lineWidth: 1)
                        .frame(width: 360,height:150)
                        .foregroundColor(.clear)
                    TextField("Describe Your Request.....", text: $notes)
                        .font(
                            .system(size: 13,
                                    weight:.semibold)
                        )
                        .foregroundColor(Color(.black))
                        .frame(width: 320,height: 125, alignment: .topLeading)
    
                }
            
                Spacer()
                Button(action :{
                    Task{
                        try! await createBooking()
                    }
                    Task{
                        pageState = "DonePage"
                    }
                    
                }){
                    ZStack{
                        
                        Rectangle()
                        
                            .fill(Color.black)
                            .frame(width: 360, height: 45)
                        
                            .cornerRadius(10)
                        Text("DONE")
                            .font(Font.custom("SF Pro", size: 18))
                            .foregroundStyle(.white)
                    }
                }
                }
                .navigationBarTitle(Text("Session Details"), displayMode: .inline)
               
            }
        }
    
}



struct previewbookSession: View {
   
   
    @State var selectedItems: String = ""
    @StateObject private var bookingsModel = bookingModel()
    @StateObject var userModel = usersModel()
    @State var bookingId: Int = 14
    
    var body: some View {
        BookingView(pageState: $selectedItems, previousPageState: $selectedItems, bookingId: $bookingId, pilotId: $bookingId, userModel: userModel, bookingModel: bookingModel())
    }
}

#Preview {
    previewbookSession()
}

