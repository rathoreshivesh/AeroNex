//
//  mainHomePage.swift
//  checking
//
//  Created by Devansh Agarwal on 07/01/24.
//

import SwiftUI

struct mainHomePage: View {
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
                            Image("userProfile")
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
                
                VStack{
                    Image("Image1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding(.horizontal, 8.0)
                    
                    HStack{
                        Image("Image2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 85, height: 105)
                            .cornerRadius(15)
                        Spacer()
                        Image("Image3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 85, height: 105)
                            .cornerRadius(15)
                        Spacer()
                        Image("Image4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 85, height: 105)
                            .cornerRadius(15)
                        Spacer()
                        Image("Image5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 85, height: 105)
                            .cornerRadius(15)
                        
                    }.frame(maxWidth: .infinity).padding(.horizontal, 8.0).padding(.top,5)
                    
                }
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
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 366, height: 85)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.85, green: 0.85, blue: 0.85), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 0),
                                endPoint: UnitPoint(x: 0.5, y: 1)
                            )
                        )
                    Text("Ministry of Civil Aviation has removed the mandatory passport requirement for aspiring drone pilots. ")
                        .font(Font.custom("SF Pro", size: 16))
                        .kerning(1)
                        .foregroundColor(.black)
                        .frame(width: 346, height: 76, alignment: .topLeading)
                }.padding(.top,10)
                
                
            }.ignoresSafeArea(.all,edges:.bottom)
        }
    }
}

#Preview {
    mainHomePage()
}
