import SwiftUI
import MapKit
struct landmarkCard2: View {
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    var body: some View {
        Map(position: $position,interactionModes: [.rotate,.zoom]){
            UserAnnotation()
        }
        .mapControls{
            MapUserLocationButton()
            MapPitchToggle()
        }
        
            .mapStyle(.hybrid(elevation:.realistic))
            .onAppear(){
                CLLocationManager().requestWhenInUseAuthorization()
            }
    }
}
#Preview {
    landmarkCard2()
}
