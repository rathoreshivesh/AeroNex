import SwiftUI

struct Tabbar: View {
    
    @Binding var pageState: String
    @Binding var previousPageState: String
    
    @State private var isLogged: Bool = UserDefaults.standard.bool(forKey: "LoginState")
    @State private var loggedUserID: String = UserDefaults.standard.string(forKey: "LoggedUserID") ?? ""
    @State private var loggedUserName: String = UserDefaults.standard.string(forKey: "LoggedUserName") ?? ""
    @State private var loggedUserEmail: String = UserDefaults.standard.string(forKey: "LoggedUserEmail") ?? ""
    
    var body: some View {
        VStack{
            HStack(alignment:.center, spacing: 60){
                if(pageState == "HomePage"){
                    Button(action:{
                        withAnimation{
                            pageState = "HomePage"
                        }
                    }){
                        VStack(spacing:5){
                            Image(systemName: "house.fill")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 18, weight: .heavy))
                            Text("Home")
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundColor(.black.opacity(0.8))
                    }
                }
                else{
                    Button(action:{
                        withAnimation{
                            pageState = "HomePage"
                        }
                    }){
                        VStack(spacing:5){
                            Image(systemName: "house.fill")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 18, weight: .heavy))
                            Text("Home")
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundColor(Color(.teel))
                    }
                }
                if(pageState == "PilotSelectionPage" || pageState == "BookSessionPage"){
                    Button(action:{
                        withAnimation{
                            if(isLogged){
                                pageState = "PilotSelectionPage"
                                previousPageState = "PilotSelectionPage"
                            }
                            else{
                                pageState = "PilotSelectionPage"
                                previousPageState = "PilotSelectionPage"
                            }
//                            pageState = "LeaderboardPage"
                        }
                    }){
                        VStack(spacing:5){
                            Image(systemName: "paperplane.fill")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 18, weight: .heavy))
                            Text("Pilot")
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundColor(.black.opacity(0.8))
                    }
                }
                else{
                    Button(action:{
                        withAnimation{
                            if(isLogged){
                                pageState = "PilotSelectionPage"
                                previousPageState = "PilotSelectionPage"
                            }
                            else{
                                pageState = "PilotSelectionPage"
                                previousPageState = "PilotSelectionPage"
                            }
//                            pageState = "LeaderboardPage"
                        }
                    }){
                        VStack(spacing:5){
                            Image(systemName: "paperplane.fill")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 18, weight: .heavy))
                            Text("Pilot")
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundColor(Color(.teel))
                    }
                }
                if(pageState == "BookingPage" || pageState == "BookingDetailsPage"){
                    Button(action:{
                        withAnimation{
                            if(isLogged){
                                pageState = "BookingPage"
                                previousPageState = "BookingPage"
                            }
                            else{
                                pageState = "BookingPage"
                                previousPageState = "BookingPage"
                            }
                            
                        }
                    }){
                        VStack(spacing:5){
                            Image(systemName: "calendar")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 18, weight: .heavy))
                            Text("Bookings")
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundColor(.black.opacity(0.8))
                    }
                }
                else{
                    Button(action:{
                        withAnimation{
                            if(isLogged){
                                pageState = "BookingPage"
                                previousPageState = "BookingPage"
                            }
                            else{
                                pageState = "BookingPage"
                                previousPageState = "BookingPage"
                            }
                        }
                    }){
                        VStack(spacing:5){
                            Image(systemName: "calendar")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 18, weight: .heavy))
                            Text("Bookings")
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundColor(Color(.teel))
                    }
                }
                if(pageState == "ProfilePage" || pageState=="UserProfilePage"){
                    Button(action:{
                        withAnimation{
                            if(isLogged){
                                pageState = "ProfilePage"
                                previousPageState = "ProfilePage"
                            }
                            else{
                                pageState = "ProfilePage"
                                previousPageState = "ProfilePage"
                            }
//                            pageState = "ProfilePage"
                        }
                    }){
                        VStack(spacing:5){
                            Image(systemName: "person")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 18, weight: .heavy))
                            Text("Profile")
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundColor(.black.opacity(0.8))
                    }
                }
                else{
                    Button(action:{
                        withAnimation{
                            if(isLogged){
                                pageState = "ProfilePage"
                                previousPageState = "ProfilePage"
                            }
                            else{
                                pageState = "ProfilePage"
                                previousPageState = "ProfilePage"
                            }
//                            pageState = "ProfilePage"
                        }
                    }){
                        VStack(spacing:5){
                            Image(systemName: "person")
                                .symbolRenderingMode(.hierarchical)
                                .font(.system(size: 18, weight: .heavy))
                            Text("Profile")
                                .font(.system(size: 10, weight: .medium))
                        }
                        .foregroundColor(Color(.teel))
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(10)
        .background(.white)
        .overlay(
            Rectangle()
                .frame(height: 1, alignment: .bottom)
                .foregroundColor(.black.opacity(0.25)),
            alignment: .top
        )
    }
}

struct TabbarPreview: View {
    
    @State var pageState = "HomePage"
    
    var body: some View {
        Tabbar(pageState: $pageState, previousPageState: $pageState)
    }
}

#Preview {
    TabbarPreview()
}
