//
//  pilotProfile.swift
//  Aeronex
//
//  Created by Devansh Agarwal on 27/02/24.
//

import SwiftUI

struct userProfile: View {
    @Binding var pageState: String
    @Binding var previousPageState: String
    @ObservedObject var userModel: usersModel
    
    
    @State private var isLogged: Bool = UserDefaults.standard.bool(forKey: "LoginState")
    @State private var loggedUserID: String = UserDefaults.standard.string(forKey: "LoggedUserID") ?? ""
    @State private var loggedUserName: String = UserDefaults.standard.string(forKey: "LoggedUserName") ?? "Preview"
    @State private var loggedUserEmail: String = UserDefaults.standard.string(forKey: "LoggedUserEmail") ?? ""
    
    
    @State private var name : String = ""
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var experience : String = ""
    @State private var charges : String = ""
    var body: some View {
        NavigationStack{
            VStack{
                /*
                ZStack {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: 139, height: 139)
                        .overlay(
                            
                            Image("pilotPhoto")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 139, height: 139)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.teel, lineWidth: 4)),alignment: .center)
                    ZStack{
                        //Ellipse 75
                        Circle()
                            .fill(Color(red: 0.23, green: 0.83, blue: 0.65))
                            .frame(width: 50, height: 50)
                        Image("profilePencil")
                            .frame(width:25,height: 25)
                        
                    }.offset(x:35,y:45)
                 
                    
                }.padding(.top,30)
                 */
                //David Beckham
                
                ScrollView{
                    VStack(alignment: .leading,spacing:15){
                        
                        Text("Name").font(.system(size: 16, weight: .medium))
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 335.35999, height: 45)
                                .background(.gray)
                                .opacity(0.1)
                                .cornerRadius(14)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .inset(by: 0.76)
                                        .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                                )
                            
                            
                            
                            TextField(loggedUserName, text: $name)
                                .font(
                                    .system(size: 16,
                                            weight:.semibold)
                                )
                                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                                .frame(width: 260, alignment: .leading)
                            
                            
                        }
                        Text("Email").font(.system(size: 16, weight: .medium))
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 335.35999, height: 45)
                                .background(.gray)
                                .opacity(0.1)
                                .cornerRadius(14)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .inset(by: 0.76)
                                        .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                                )
                            
                            
                            
                            TextField(loggedUserEmail, text: $email)
                                .font(
                                    .system(size: 16,
                                            weight:.semibold)
                                )
                                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                                .frame(width: 260, alignment: .leading)
                            
                        }
                        Text("Password").font(.system(size: 16, weight: .medium))
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 335.35999, height: 45)
                                .background(.gray)
                                .opacity(0.1)
                                .cornerRadius(14)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .inset(by: 0.76)
                                        .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                                )
                            
                            
                            
                            SecureField("***********", text: $password)
                                .font(
                                    .system(size: 16,
                                            weight:.semibold)
                                )
                                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                                .frame(width: 260, alignment: .leading)
                            
                            
                        }
                        /*
                         Text("Experience").font(.system(size: 16, weight: .medium))
                         ZStack{
                         Rectangle()
                         .foregroundColor(.clear)
                         .frame(width: 335.35999, height: 45)
                         .background(.gray)
                         .opacity(0.1)
                         .cornerRadius(14)
                         .overlay(
                         RoundedRectangle(cornerRadius: 14)
                         .inset(by: 0.76)
                         .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                         )
                         
                         
                         
                         TextField("5 Years", text: $experience)
                         .font(
                         .system(size: 16,
                         weight:.semibold)
                         )
                         .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                         .frame(width: 260, alignment: .leading)
                         
                         
                         }
                         Text("Charge").font(.system(size: 16, weight: .medium))
                         ZStack{
                         Rectangle()
                         .foregroundColor(.clear)
                         .frame(width: 335.35999, height: 45)
                         .background(.gray)
                         .opacity(0.1)
                         .cornerRadius(14)
                         .overlay(
                         RoundedRectangle(cornerRadius: 14)
                         .inset(by: 0.76)
                         .stroke(Color(red: 0.5, green: 0.48, blue: 0.48).opacity(0.14), lineWidth: 1.51991)
                         )
                         
                         
                         
                         TextField("5000", text: $charges)
                         .font(
                         .system(size: 13,
                         weight:.semibold)
                         )
                         .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.8))
                         .frame(width: 260, alignment: .leading)
                         
                         
                         }*/
                    }.padding(.top,50)
                    
                }
                Button(action:{
                    withAnimation{
                        pageState = "ProfilePage"
                    }
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 14)
                            .fill(Color(.primaryBlack))
                            .frame(width: 148, height: 49)
                        //SAVE
                        Text("SAVE").font(.system(size: 16, weight: .semibold)).foregroundColor(Color(.white))
                        
                    }.frame(alignment: .center)
                }
            }.navigationTitle("Your Profile")
        }
    }
    
}
struct previewUserProfile: View {
   
   
    @State var selectedItems: String = ""
    @StateObject private var userModel = usersModel()
    
    var body: some View {
        userProfile(pageState: $selectedItems, previousPageState: $selectedItems, userModel: userModel)
    }
}

#Preview {
    previewUserProfile()
}
