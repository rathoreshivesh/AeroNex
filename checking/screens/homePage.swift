//
//  homePage.swift
//  checking
//
//  Created by Devansh Agarwal on 06/01/24.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    
                    Image("ic-3lines")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                    Text("AeroNex")
                        .font(
                            Font.custom("Poppins", size: 16)
                                .weight(.semibold)
                        )
                        .padding(.bottom)
                        .kerning(1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                        .frame(width: 75, alignment: .top)
                    Spacer()
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 43, height: 42)
                        .background(
                            Image("userIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 43, height: 42)
                                .clipped()
                        )
                        .cornerRadius(63)
                    
                }.padding(.horizontal, 20.0).frame(maxWidth: .infinity)
                VStack{
                    Text("Hey,User!")
                        .font(Font.custom("SF Pro", size: 32))
                        .padding(.leading, 15.0)
                        .kerning(1)
                        .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Text("Welcome")
                        .font(Font.custom("SF Pro", size: 14))
                        .padding(.leading, 15.0)
                        .kerning(1)
                        .foregroundColor(Color(red: 0.73, green: 0.76, blue: 0.77))
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                }
            
                HStack{
                    Text("Latest Shot")
                        .font(Font.custom("SF Pro Display", size: 16))
                        .kerning(1)
                        .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                        .frame(width: 96.9375, alignment: .topLeading)
                    
                    Spacer()
                    
                    Text("See All")
                        .font(
                            Font.custom("SF Pro Display", size: 12)
                                .weight(.medium)
                        )
                        .kerning(1)
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color(red: 0.23, green: 0.79, blue: 0.85))
                        .frame(width: 56, height: 27, alignment: .topTrailing)
                }
                .padding(.horizontal, 10.0)
                
                
                latestShotCard()
                    
            
                HStack{
                    Text("All Shots Today")
                        .font(Font.custom("SF Pro Display", size: 16))
                        .kerning(1)
                        .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                    
                    
                    Spacer()
                    
                    Text("See All")
                        .font(
                            Font.custom("SF Pro Display", size: 12)
                                .weight(.medium)
                        )
                        .kerning(1)
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color(red: 0.23, green: 0.79, blue: 0.85))
                        .frame(width: 56, height: 27, alignment: .topTrailing)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 10.0)
                .padding(.top)
                
                HStack{
                    
                    VStack{
                        HStack{
                            Image("imageIcon")
                                .frame(width: 41.2844, height: 36.55914)
                                .cornerRadius(10)
                            VStack{
                                Text("Summer Beach")
                                    .font(
                                        Font.custom("SF Pro", size: 13)
                                            .weight(.medium)
                                    )
                                    .kerning(1)
                                    .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                                
                                    .frame(width: 140, alignment: .leading)
                                Text("Views")
                                    .font(
                                        Font.custom("SF Pro", size: 13)
                                            .weight(.medium)
                                    )
                                    .kerning(1)
                                    .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                                
                                    .frame(width: 140, alignment: .leading)
                            }
                            
                        }
                        Text("Photos Gallery")
                            .font(Font.custom("SF Pro Display", size: 12))
                            .padding(.leading, 5.0)
                            .kerning(1)
                            .foregroundColor(Color(red: 0.73, green: 0.76, blue: 0.77))
                        
                            .frame(width: 102.17889, height: 15, alignment: .topLeading)
                    }
                    
                    Spacer()
                    
                    VStack{
                        HStack{
                            Image("videoIcon")
                                .frame(width: 41.2844, height: 36.55914)
                                .cornerRadius(10)
                            VStack{
                                Text("Cinematic Video")
                                    .font(
                                        Font.custom("SF Pro", size: 13)
                                            .weight(.medium)
                                    )
                                
                                    .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                
                                Text("Of Cliffs")
                                    .font(
                                        Font.custom("SF Pro", size: 13)
                                            .weight(.medium)
                                    )
                                    .kerning(1)
                                    .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                                
                                    .frame(maxWidth: .infinity,alignment: .leading)
                            }
                            
                        }
                        Text("Video Gallery")
                            .font(Font.custom("SF Pro Display", size: 12))
                            .padding(.leading, 25)
                            .kerning(1)
                            .foregroundColor(Color(red: 0.73, green: 0.76, blue: 0.77))
                        
                            .frame(width: 130, height: 15, alignment: .topLeading)
                    }
                }.frame(maxWidth: .infinity).padding(.horizontal,10)
                
                HStack{
                    Text("Updates")
                        .font(Font.custom("SF Pro Display", size: 16))
                        .kerning(1)
                        .foregroundColor(Color(red: 0.14, green: 0.16, blue: 0.16))
                    
                    
                    Spacer()
                    
                    Text("See All")
                        .font(
                            Font.custom("SF Pro Display", size: 12)
                                .weight(.medium)
                        )
                        .kerning(1)
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color(red: 0.23, green: 0.79, blue: 0.85))
                        .frame(width: 56, height: 27, alignment: .topTrailing)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 10.0)
                .padding(.top)
                
                news()
                
                
            }.ignoresSafeArea(edges:.bottom)
            
        }.padding()
    }
}

#Preview {
    homePage()
}
