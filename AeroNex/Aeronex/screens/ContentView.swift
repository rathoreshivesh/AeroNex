
import SwiftUI

struct ContentView: View {
    
    
    @StateObject var bookingData = book()
    @StateObject private var userModel = usersModel()
    @StateObject private var bookingsModel = bookingModel()
    @StateObject private var requestModel = requestsModel()
    @State var pilotId: Int = 0
    
    @State private var isBoarded: Bool = UserDefaults.standard.bool(forKey: "BoardingState")
    
    @State var pageState = ""
    @State var previousPageState = ""
    @State var isOrdered = false
    @State var presentOnBoarding: Bool = false
    @State var bookingId: Int = 0
  
    var body: some View {
        VStack{
            
            if(pageState == "LoginOrSignUpPage"){
                loginOrSignUp(pageState:$pageState, previousPageState: $previousPageState, userAPI:userModel)
            }
            else if(pageState == "SignUpPage"){
               SignUp(userAPI: userModel, pageState: $pageState, previousPageState: $previousPageState)
            }
            else if(pageState == "DonePage"){
                doneView(pageState: $pageState, previousPageState: $previousPageState)
            }
            else{
                VStack{
                    if(pageState == "HomePage"){
                        newHomePage(pageState: $pageState, previousPageState: $previousPageState, userModel: userModel, bookingModel: bookingsModel)
                    }
                    else if(pageState == "PilotSelectionPage"){
                        pilotSelection(pageState: $pageState, previousPageState: $previousPageState, userModel: userModel, bookingModel: bookingsModel, pilotId: $pilotId, pilotsData: pilotsData)
                    }
                    else if(pageState == "BookSessionPage"){
                        BookingView(pageState: $pageState, previousPageState: $previousPageState, bookingId: $bookingId, pilotId: $pilotId, userModel: userModel, bookingModel: bookingsModel)
                    }
                    else if(pageState == "BookingPage"){
                        bookings(pageState: $pageState, previousPageState: $previousPageState, userModel: userModel, bookingModel: bookingsModel)
                    }
                    else if(pageState == "BookingDetailsPage"){
                        bookingDetails(pageState:$pageState, previousPageState: $previousPageState, userModel: userModel, bookingModel: bookingsModel)
                    }
                    else if(pageState == "ProfilePage"){
                        profile(pageState: $pageState, previousPageState: $previousPageState)
                    }
                    else if(pageState == "UserProfilePage"){
                        userProfile(pageState: $pageState, previousPageState: $previousPageState, userModel: userModel)
                    }
                    else if(pageState == "pilotProfile"){
                        pilotPortfolio(userModel: userModel, pilotId: $pilotId, pageState: $pageState)
                    }
                    Spacer()
                    Tabbar(pageState: $pageState, previousPageState: $previousPageState)
                    
                }
            }
        }
        .sheet(isPresented: $presentOnBoarding){
            VStack{
                HStack{
                    Text("")
                        .font(.system(size: 20, weight: .semibold))
                    Spacer()
                }
                .padding(.vertical)
                Spacer()
                VStack{
                    Image("AeroNexLogo")
                        .symbolRenderingMode(.hierarchical)
                        
                        
//                    Text("Welcome to")
//                        .font(.system(size: 32, weight: .black))
//                    Text("AeroNex")
//                        .font(.system(size: 32, weight: .black))
                }
                .padding(.bottom,30)
                VStack(spacing:30){
                    HStack{
                        VStack{
                            Image(systemName: "dollarsign")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 17, weight: .regular))
                                .foregroundColor(.white)
                        }
                        .frame(width: 38, height: 38)
                        .background(Color.teel)
                        .cornerRadius(10)
                        Text("Get affordable Drone services!")
                            .font(.system(size: 17, weight: .regular))
                        Spacer()
                    }
                    HStack{
                        VStack{
                            Image(systemName: "calendar")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 17, weight: .regular))
                                .foregroundColor(.white)
                        }
                        .frame(width: 38, height: 38)
                        .background(.yellow)
                        .cornerRadius(10)
                        Text("Easy to Book and Cancel!")
                            .font(.system(size: 17, weight: .regular))
                        Spacer()
                    }
//
                    HStack{
                        VStack{
                            Image(systemName: "mappin")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 17, weight: .regular))
                                .foregroundColor(.white)
                        }
                        .frame(width: 38, height: 38)
                        .background(.blue)
                        .cornerRadius(10)
                        Text("On time at the Location!")
                            .font(.system(size: 17, weight: .regular))
                        Spacer()
                    }
                }
                .padding(.horizontal,20)
                Spacer()
                Button(action:{
                    UserDefaults.standard.set(true,forKey: "BoardingState")
                    pageState = "LoginOrSignUpPage"
                    presentOnBoarding = false
                }){
                    HStack{
                        Text("Get Started")
                        Image(systemName: "arrow.right")
                            .symbolRenderingMode(.hierarchical)
                    }
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                }
            }
            .padding(.horizontal, 20)
        }
        .task {
            if(isBoarded){
                pageState = "LoginOrSignUpPage"
                presentOnBoarding = false
            }
            else{
                pageState = ""
                presentOnBoarding = true
            }
        }
    
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
