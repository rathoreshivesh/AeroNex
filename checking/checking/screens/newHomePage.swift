//
//  newHomePage.swift
//  checking
//
//  Created by Devansh Agarwal on 04/02/24.
//

import SwiftUI

struct newHomePage: View {
    var body: some View {
        NavigationStack{
           
                
                VStack(spacing:25){
                    
                    VStack(alignment:.leading){
                        Text("Hello,User!")
                            .font(
                                Font.custom("SF Pro Rounded", size: 36)
                            )
                            .font(.title)
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }.padding(.leading)
                    
                    searchBar()
                    ScrollView{
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 360, height: 204)
                            .overlay(
                                VideoPlayerView(videoFileName: "video", videoFileExtension: "mp4", alpha: 0.5)
                            )
                        
                            .cornerRadius(4)
                        
                        VStack(alignment: .leading,spacing:20){
                            //Book a Drone Pilot
                            Text("Book a Drone Pilot").font(.system(size: 20, weight: .regular))
                            
                            Text("Get aerial imagery on demand ").font(.system(size: 15, weight: .regular))
                            Text("Book a drone pilot and unlock the power of drone technology with AeroNex.").font(.system(size: 10, weight: .regular))
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
                            
                        }.padding()
                        
                        
                    }.padding(.horizontal)
                    
                    VStack(alignment:.leading){
                        //Explore
                        Text("Explore").font(.system(size: 24, weight: .medium)).tracking(1).multilineTextAlignment(.center)
                        HStack{
                            VStack{
                                Image("farmerBro")
                                    .frame(width: 100,height: 100)
                                Text("Agricultural\nDrone Pilots").font(.system(size: 15, weight: .medium))
                            }
                            Spacer()
                            VStack{
                                Image("infraBro")
                                    .frame(width: 100,height: 100)
                                Text("Survey/Inspection\nDrone Pilots").font(.system(size: 15, weight: .medium)).multilineTextAlignment(.center)
                            }
                        }.padding(.horizontal)
                        
                    }.padding()
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 360, height: 115)
                            .background(Color(.rect))
                        
                            .cornerRadius(4)
                        
                        HStack{
                            Image("gifNoBookings")
                                .frame(width:100,height: 100)
                            VStack(alignment:.leading,spacing:3){
                                Text("No upcoming booking").font(.system(size: 16, weight: .regular))
                                Text("Book a drone pilot").font(.system(size: 12, weight: .regular))
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    VStack(spacing:20){
                        Text("Recommended Experts").font(.system(size: 16, weight: .medium)).tracking(1).multilineTextAlignment(.center)
                        
                       homePagePilotCard()
                        
                        homePagePilotCard()
                    }
                    
                        VStack(spacing:20){
                            Text("Recommended by your location").font(.system(size: 16, weight: .medium)).tracking(1).multilineTextAlignment(.center)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                                                    
                                   homePagePilotCard()
                                    
                                    homePagePilotCard()
                            }.padding(.leading)
                            }
                        }
                        
                     
                    
                    
                    
                    Spacer()
                    
                    
                    
                    
                    
                    
                    
                }.navigationTitle("AeroNex")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
        
    
}

#Preview {
    newHomePage()
}
