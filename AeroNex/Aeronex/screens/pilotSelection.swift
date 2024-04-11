//
//  pilotSelection.swift
//  checking
//
//  Created by Devansh Agarwal on 08/01/24.
//

import SwiftUI

struct pilotSelection: View {
    @Binding var pageState: String
    @Binding var previousPageState: String
    @StateObject var bookData = book()
    @ObservedObject var userModel: usersModel
    @ObservedObject var bookingModel: bookingModel
    @Binding var pilotId: Int
    
    
//    @State private var isPageLoading: Bool = false
    
    
    
    
    @State private var isLogged: Bool = UserDefaults.standard.bool(forKey: "LoginState")
    @State private var loggedUserID: String = UserDefaults.standard.string(forKey: "LoggedUserID") ?? ""
    @State private var loggedUserName: String = UserDefaults.standard.string(forKey: "LoggedUserName") ?? "Preview"
    @State private var loggedUserEmail: String = UserDefaults.standard.string(forKey: "LoggedUserEmail") ?? ""
    
  
    
    let pilotsData: [pilotFields]
    var body: some View {
        NavigationStack{
            
                VStack(spacing:20){
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 393, height: 15)
                            .background(Color(red: 0.23, green: 0.83, blue: 0.65))
                        
                    }
                    
                    searchBarBookings()
                    ScrollView{
                        VStack(spacing:20){
                            if(!$userModel.pilots.isEmpty){
                                ForEach(userModel.pilots, id: \.id) { pilot in
                                    VStack{
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 340, height: 260)
                                                .background(Color(red: 0.92, green: 0.92, blue: 0.92).opacity(0.5))
                                                .cornerRadius(12)
                                            
                                            VStack(spacing:15){
                                                
                                                HStack(spacing:25){
                                                               Rectangle()
                                                                   .fill(Color.clear) // Set the rectangle's fill color
                                                                   .frame(width: 139, height: 139) // Set the rectangle's size
                                                                   .overlay(
                                                                       // Overlay the rectangle with a circular image
                                                                       Image("pilotPhoto") // Replace "yourImageName" with your actual image name
                                                                           .resizable()
                                                                           .scaledToFill()
                                                                           .frame(width: 139, height: 139) // Set the image size
                                                                           .clipShape(Circle()) // Clip the image into a circle
                                                                           .overlay(Circle().stroke(Color.teel, lineWidth: 4)) // Add a border stroke around the circular image
                                                                           // Optional: Add a shadow for some depth
                                                                       , alignment: .center // Align the overlay in the center of the rectangle
                                                                   )
                                                        VStack(alignment: .leading,spacing: 0){
                                                            Text("\(pilot.fullName)")
                                                                .font(
                                                                    Font.custom("SF Pro", size: 22)
                                                                        .weight(.bold)
                                                                )
                                                                .foregroundColor(.black)
                                                                .frame(width: 100,height: 60,alignment:.leading)
                                                            
                                                            
                                                            HStack(spacing: 0){
                                                                Text("Drone:")
                                                                    .font(
                                                                        Font.custom("SF Pro", size: 16)
                                                                            .weight(.semibold)
                                                                    )
                                                                    .foregroundColor(.gray)
                                                                    .frame(width:55, height: 20,alignment: .leading)
                                                                
                                                                Text("\(pilot.drone)")
                                                                    .font(
                                                                        Font.custom("SF Pro", size: 16)
                                                                            .weight(.semibold)
                                                                    )
                                                                    .frame(width:100, height: 20, alignment:.leading)
                                                                    .foregroundColor(.black)
                                                                
                                                            }
                                                            HStack(spacing: 0){
                                                                Text("Price:")
                                                                    .font(
                                                                        Font.custom("SF Pro", size: 16)
                                                                            .weight(.semibold)
                                                                    )
                                                                    .foregroundColor(.gray)
                                                                    .frame(width:45, height: 20,alignment: .leading)
                                                                
                                                                Text("\(pilot.price)")
                                                                    .font(
                                                                        Font.custom("SF Pro", size: 16)
                                                                            .weight(.semibold)
                                                                    )
                                                                    .frame(width:80, height: 20, alignment:.leading)
                                                                    .foregroundColor(.black)
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    
                                                    
                                                }
                                                VStack(alignment:.leading){
                                                    Text("See Portfolio")
                                                        .font(
                                                            Font.custom("SF Pro", size:16)
                                                                .weight(.semibold)
                                                        )
                                                        .frame(width:280, height: 20, alignment:.leading)
                                                        .foregroundColor(.teel)
                                                        
                                                }
                                                
                                                /*
                                                 VStack(spacing:2){
                                                 
                                                 Text("Tank Capacity: 20 Litres")
                                                 .font(Font.custom("SF Pro", size: 16))
                                                 .kerning(1)
                                                 .multilineTextAlignment(.center)
                                                 .foregroundColor(.black)
                                                 .frame(width: 320,alignment: .leading)
                                                 Text("Droplet Size: 50-300 μm")
                                                 .font(Font.custom("SF Pro", size: 16))
                                                 .kerning(1)
                                                 .multilineTextAlignment(.center)
                                                 .foregroundColor(.black)
                                                 .frame(width: 320,alignment: .leading)
                                                 }
                                                 */
                                                Button(action:{
                                                    Task{
                                                        try! await userModel.getMyPilot(id: pilot.id!)
                                                        withAnimation{
                                                            pageState = "pilotProfile"
                                                            pilotId = pilot.id ?? 0
                                                    }
                                                    }
                                                }){
                                                    ZStack{
                                                        Rectangle()
                                                            .foregroundColor(.clear)
                                                            .frame(width: 321, height: 41)
                                                            .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                                                            .cornerRadius(10)
                                                        Text("Book Now")
                                                            .font(
                                                                Font.custom("SF Pro", size: 18)
                                                                    .weight(.medium)
                                                            )
                                                            .kerning(1)
                                                            .multilineTextAlignment(.center)
                                                            .foregroundColor(.white)
                                                            .frame(width:100, alignment: .top)
                                                    }
                                                }
                                            }
                                            
                                            
                                        }
                                    }
                                    }
                            }
                    }
                }
                .navigationTitle("Book Your Pilot")
                
                
            }
        }
    }
}
struct previewPilotSelectionPage: View {
    
    @State var selectedItems: String = ""
    @State var Integ: Int = 0
    @StateObject var userModel = usersModel()
    @StateObject var bookingsModel=bookingModel()
    
    var body: some View {
        pilotSelection(pageState: $selectedItems, previousPageState: $selectedItems, userModel: userModel, bookingModel: bookingsModel, pilotId: $Integ, pilotsData: pilotsData)
    }
}

#Preview {
   previewPilotSelectionPage()
}
