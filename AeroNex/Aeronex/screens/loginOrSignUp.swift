import SwiftUI
import Firebase
struct loginOrSignUp: View {
    @Binding var pageState: String
    @Binding var previousPageState: String
    @ObservedObject var userAPI: usersModel

    var body: some View {
        NavigationStack{
            VStack {
                
                aeroImg().padding(.top,25)
                
                Text("Login or Sign up")
                    .font(.system(size: 28).bold())
//
                Button(action:{
                    withAnimation{
                        pageState = "SignUpPage"
                    }
                }){
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 360, height: 50)
                        .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                    
                        .cornerRadius(10)
                        .overlay(
                            Text("Continue with Email")
                                .font(
                                    Font.custom("SF Pro", size: 18)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.white)
                        )
               }
                
                
                HStack(alignment: .center, spacing: 10) {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 14)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
                            .frame(width: 172,height: 50)
                        Image("google-ic")
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 14)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.84, green: 0.84, blue: 0.84), lineWidth: 1)
                            .frame(width: 182,height:50)
                        Image("ic-Apple")
                            .frame(width: 40, height: 40)
                        
                    }
                    
                    
                    
                }
                termsAndCondition()
            }
        }
        .task {
            do{
                try! await userAPI.getPilot()
            }
            catch{
                print(error)
            }
        }
    }
}

struct previewloginorupPage: View {
    
    @State var selectedItems: String = ""
    @StateObject private var userModel = usersModel()

    
    var body: some View {
        loginOrSignUp(pageState: $selectedItems, previousPageState: $selectedItems, userAPI: userModel)
    }
}

#Preview {
   previewloginorupPage()
}
