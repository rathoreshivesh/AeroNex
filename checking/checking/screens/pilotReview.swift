//
//  pilotReview.swift
//  checking
//
//  Created by Devansh Agarwal on 12/02/24.
//

import SwiftUI

struct pilotReview: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack(spacing:30){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 346, height: 135)
                            .foregroundColor(.clear)
                            .background(Color(.rect))
                        HStack(spacing:40){
                            Image("dpPhoto")
                                .frame(width: 100 ,height: 100)
                            
                            VStack(alignment:.leading,spacing:5){
                                //Michael Nowak
                                Text("Michael Nowak")
                                    .font(.system(size: 16, weight: .semibold))
                                HStack(spacing:1){
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                   
                                }
                                Text("Surveying Expert").font(.system(size: 13, weight: .medium))
                                    .foregroundStyle(.gray)
                                //₹5,000
                                Text("₹5,000").font(.system(size: 16, weight: .bold))
                            }
                        }
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 340, height: 42)
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
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 346, height: 140)
                            .foregroundColor(.clear)
                            .background(Color(.rect))
                        
                        VStack(alignment:.leading,spacing:15){
                            
                            
                            HStack(){
                                Image("rvDropPin")
                                
                                VStack(alignment:.leading){
                                    //Anna Nagar, Chennai
                                    Text("Anna Nagar, Chennai").font(.system(size: 15, weight: .semibold))
                                    //0.8 km from you
                                    Text("0.8 km from you").font(.system(size: 13, weight: .medium))
                                        .foregroundStyle(.gray)
                                }
                                
                            }
                            HStack(){
                                Image("cash")
                                
                                //Cash
                                Text("Cash").font(.system(size: 15, weight: .semibold))
                            }
                            HStack(){
                                Image("rvTrophy")
                                
                                //Cash
                                Text("Surveying & Mapping Expert").font(.system(size: 15, weight: .semibold))
                            }
                        }.frame(width: 300,alignment: .leading)
                    }
                    
                    VStack(alignment:.leading){
                        //Ratings & Reviews
                        Text("Ratings & Reviews").font(.system(size: 16, weight: .semibold))
                        
                        HStack{
                            VStack(spacing:16){
                                Text("Very Good").font(.system(size: 15, weight: .medium))
                                    .foregroundStyle(.gray)
                                HStack(spacing:1){
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                }
                                Text("520 ratings and 104  reviews").font(.system(size: 13, weight: .medium))
                                    .foregroundStyle(.gray)
                                    .multilineTextAlignment(.center)
                            }
                            
                            Divider()
                                .frame(width:2,height: 100)
                                .overlay(.gray)
                            ratingView()
                        }
                    }
                    VStack{
                        VStack(alignment:.leading,spacing:2){
                            HStack{
                                HStack(spacing:0){
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                }
                                Text("5.0").font(.system(size: 12, weight: .medium))
                                    .foregroundStyle(.teel)
                                //Skilled Pilot
                                Text("Skilled Pilot").font(.system(size: 15, weight: .medium))
                            }
                            //Lorem ipsum dolor sit amet...
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, elit vitae venenatis venenatis, mi ipsum ultricies ex, et pharetra.\n").font(.system(size: 14, weight: .regular))
                            Text("Manish Sharma, Chennai").font(.system(size: 13, weight: .regular))
                                .foregroundStyle(.gray)
                            
                        }.frame(width:360)
                        
                        Divider()
                        VStack(alignment:.leading,spacing:2){
                            HStack{
                                HStack(spacing:0){
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                }
                                Text("5.0").font(.system(size: 12, weight: .medium))
                                    .foregroundStyle(.teel)
                                //Skilled Pilot
                                Text("Skilled Pilot").font(.system(size: 15, weight: .medium))
                            }
                            //Lorem ipsum dolor sit amet...
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, elit vitae venenatis venenatis, mi ipsum ultricies ex, et pharetra.\n").font(.system(size: 14, weight: .regular))
                            Text("Manish Sharma, Chennai").font(.system(size: 13, weight: .regular))
                                .foregroundStyle(.gray)
                            
                        }.frame(width:360)
                        
                        Divider()
                        VStack(alignment:.leading,spacing:2){
                            HStack{
                                HStack(spacing:0){
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                    Image("greenStar")
                                }
                                Text("5.0").font(.system(size: 12, weight: .medium))
                                    .foregroundStyle(.teel)
                                //Skilled Pilot
                                Text("Skilled Pilot").font(.system(size: 15, weight: .medium))
                            }
                            //Lorem ipsum dolor sit amet...
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, elit vitae venenatis venenatis, mi ipsum ultricies ex, et pharetra.\n").font(.system(size: 14, weight: .regular))
                            Text("Manish Sharma, Chennai").font(.system(size: 13, weight: .regular))
                                .foregroundStyle(.gray)
                            
                        }.frame(width:360)
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }.navigationTitle("Michael Nowak")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
            
           
        }
    
}

#Preview {
    pilotReview()
}
