//
//  pilotPortfolio.swift
//  Aeronex
//
//  Created by user2 on 23/03/24.
//

import SwiftUI

struct pilotPortfolio: View {
    
    @ObservedObject var userModel: usersModel
    @Binding var pilotId: Int
    
    @Binding var pageState: String
    
    var body: some View {
        ScrollView{
            VStack(spacing:30){
                HStack(spacing:25){
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: 139, height: 139)
                        .overlay(
                            Image("pilotPhoto") // Replace "yourImageName" with your actual image name
                                .resizable()
                                .scaledToFill()
                                .frame(width: 139, height: 139) // Set the image size
                                .clipShape(Circle()) // Clip the image into a circle
                                .overlay(Circle().stroke(Color.teel, lineWidth: 4))
                            , alignment: .center
                        )
                    VStack(alignment: .leading){
                        Text("\(userModel.myPilot[0].fullName)")
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
                            
                            Text("\(userModel.myPilot[0].drone)")
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
                            
                            Text("\(userModel.myPilot[0].price)")
                                .font(
                                    Font.custom("SF Pro", size: 16)
                                        .weight(.semibold)
                                )
                                .frame(width:80, height: 20, alignment:.leading)
                                .foregroundColor(.black)
                            
                        }
                        
                        
                    }
                    
                }
                /*
                Button(action: {}){
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
                 */
                VStack(alignment:.leading,spacing:20){
                    Text("Bio")
                        .font(
                            Font.custom("SF Pro", size: 22)
                                .weight(.bold)
                        )
                        .foregroundColor(.black)
                        .frame(width: 360,alignment: .leading)
                    Text("\(userModel.myPilot[0].bio)")
                        .font(
                            Font.custom("SF Pro", size: 18)
                                .weight(.medium)
                        )
                }.padding(.horizontal,10)
                
            }
            VStack(alignment:.leading,spacing:20){
                Text("Portfolio")
                    .font(
                        Font.custom("SF Pro", size: 22)
                            .weight(.bold)
                    )
                    .frame(width: 360,alignment: .leading)
                    .foregroundColor(.black)
                    .padding(.top)
                VStack{
                    HStack{
                        Rectangle()
                            .fill(Color.borderGrey)
                            .cornerRadius(10)
                        // Set the rectangle's fill color
                            .frame(width: 180, height: 120) // Set the rectangle's size
                            .overlay(
                                
                                Image("") // Replace "yourImageName" with your actual image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180, height: 120))
                        Rectangle()
                            .fill(Color.borderGrey)
                            .cornerRadius(10)
                        // Set the rectangle's fill color
                            .frame(width: 180, height: 120) // Set the rectangle's size
                            .overlay(
                                
                                Image("") // Replace "yourImageName" with your actual image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180, height: 120))
                    }
                    HStack{
                        Rectangle()
                            .fill(Color.borderGrey)
                            .cornerRadius(10)
                        // Set the rectangle's fill color
                            .frame(width: 180, height: 120) // Set the rectangle's size
                            .overlay(
                                
                                Image("") // Replace "yourImageName" with your actual image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180, height: 120))
                        Rectangle()
                            .fill(Color.borderGrey)
                            .cornerRadius(10)
                        // Set the rectangle's fill color
                            .frame(width: 180, height: 120) // Set the rectangle's size
                            .overlay(
                                
                                Image("") // Replace "yourImageName" with your actual image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180, height: 120))
                    }
                    HStack{
                        Rectangle()
                            .fill(Color.borderGrey)
                            .cornerRadius(10)
                        // Set the rectangle's fill color
                            .frame(width: 180, height: 120) // Set the rectangle's size
                            .overlay(
                                
                                Image("") // Replace "yourImageName" with your actual image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180, height: 120))
                        Rectangle()
                            .fill(Color.borderGrey)
                            .cornerRadius(10)
                        // Set the rectangle's fill color
                            .frame(width: 180, height: 120) // Set the rectangle's size
                            .overlay(
                                
                                Image("") // Replace "yourImageName" with your actual image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 180, height: 120))
                    }
                }
                
            }.padding(.horizontal,10)
            Button(action: {
                pageState = "BookSessionPage"
                // Action to perform when the button is tapped
            }) {
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 360, height: 50)
                        .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                        .cornerRadius(10)
                    Text("Book Now")
                        .font(
                            Font.custom("SF Pro", size: 20)
                                .weight(.medium)
                        )
                        .kerning(1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width:100, alignment: .top)
                }
                .padding(.top)
            }

            
        }
    }
    
}

//#Preview {
//    pilotPortfolio()
//}
