import SwiftUI
import MapKit

struct BookingView: View {
    @State private var location = ""
    @State private var dateTime = Date()
    @State private var requestDescription = ""
    @State private var isAerialPhotos = false
    @State private var is3DModels = false
    @State private var isVideoEditing = false
    @State private var isCustomRequest = false
    
    var body: some View {
        NavigationView {
            VStack{
                Rectangle()
                    .overlay(landmarkCard2())
                    .frame(width: 360, height: 250 )
                    .cornerRadius(10)
                Form {
                    Section(header: Text("Book a session")) {
                        //MapView(location: $location)
                        DatePicker("Date and time", selection: $dateTime, displayedComponents: [.date, .hourAndMinute])
                        TextField("Describe your request", text: $requestDescription)
                    }
                    
                    Section(header: Text("Additional services")) {
                        Toggle(isOn: $isAerialPhotos) {
                            Text("Aerial Photos")
                        }
                        
                        Toggle(isOn: $is3DModels) {
                            Text("3D Models")
                        }
                        
                        Toggle(isOn: $isVideoEditing) {
                            Text("Mapping")
                        }
                        
                        Toggle(isOn: $isCustomRequest) {
                            Text("Survey")
                        }
                    }
            
                }
                
                NavigationLink( destination:doneView().navigationBarBackButtonHidden(true)){
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 365, height: 49)
                        .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                    
                        .cornerRadius(10)
                        .overlay(
                            Text("BOOK NOW")
                                .font(
                                    Font.custom("SF Pro", size: 24)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.white)
                        )
                }
                .navigationBarTitle(Text("Plot Details"))
                .toolbarTitleDisplayMode(.inline)
            }
        }
    }
}

struct MapView: View {
    @Binding var location: String
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // Default location (San Francisco)
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true)
            .onAppear {
                // Update the region based on the user's selected location
                updateRegion()
            }
    }
    
    private func updateRegion() {
        // Implement logic to update the region based on the entered location
        // For now, we'll use a default location (San Francisco) as an example
        region.center = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
