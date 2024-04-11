import SwiftUI

struct PlotBooking: View {
    @State private var chemicalType: String = ""
    @State private var selectedTimeSlot = "Morning"
    @State private var sprayingObjective: String? = "Prevent Weeds"
    var body: some View {
        NavigationStack{
            VStack(){
                Spacer()
                Divider()
                Spacer()
                VStack(){
                    
                    Text("Edit Booking Information")
                        .font(
                            Font.custom("SF Pro", size: 25)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                    
                    
                    
                        .padding(.leading, 20.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
                
                Divider()
                
                Spacer()
                VStack(spacing:14){
                    Text("Choose Date and Time")
                        .font(
                            Font.custom("SF Pro", size: 20)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                        .padding(.leading, 20.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
//                    Text("Spraying Date")
//                        .font(
//                            Font.custom("SF Pro", size: 16)
//                                .weight(.semibold)
//                        )
//                        .foregroundColor(.black)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.leading, 20.0)
                }
                Spacer()
                Spacer()
                
                calendarView()
                
                Spacer()
                Spacer()
                
                Text("Please Make the booking 3 days in advance. We cannot guarantee that you will find a pilot in less than 3 days.")
                    .font(Font.custom("SF Pro", size: 14))
                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    .frame(width: 336, alignment: .leading)
                Spacer()
                Spacer()
                
                Text("Time Slot")
                    .font(
                        Font.custom("SF Pro", size: 16)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .padding(.leading, 20.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Spacer()
                ZStack{
                    
                    
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 336, height: 53)
                        .background(.white)
                    
                        .cornerRadius(11)
                        .overlay(
                            RoundedRectangle(cornerRadius: 11)
                                .inset(by: 0.5)
                                .stroke(.black, lineWidth: 1)
                            
                        )
                    
                    
                    
                    HStack{
                        Section(header: Text("")) {
                            Picker("Time Slot", selection: $selectedTimeSlot) {
                                Text("Morning").tag("Morning")
                                Text("Afternoon").tag("Afternoon")
                                Text("Evening").tag("Evening")
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .frame(width: 300)
                            
                        }
                    }
                }
                Spacer()
                Spacer()
                
                Divider()
                
                
                Spacer()
                Spacer()
                
                Text("Core Objective")
                    .font(
                        Font.custom("SF Pro", size: 20)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
                    .padding(.leading, 20.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                
                
                ZStack{
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 336, height: 53)
                        .background(.white)
                    
                        .cornerRadius(11)
                        .overlay(
                            RoundedRectangle(cornerRadius: 11)
                                .inset(by: 0.5)
                                .stroke(.black, lineWidth: 1)
                        )
                    
                    TextField("Wood Vinegar or Mapping", text: $chemicalType)
                        .font(Font.custom("SF Pro", size: 16))
                    //.foregroundColor(.black)
                        .padding(.leading, 40.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
                Spacer()
                
                Divider()
                
                Spacer()
                Spacer()
                Spacer()
                
                VStack(){
                    
//                    Text("Select Goal ")
//                        .font(
//                            Font.custom("SF Pro", size: 20)
//                                .weight(.semibold)
//                        )
//                        .foregroundColor(Color(red: 0.1, green: 0.11, blue: 0.12))
//
//                        .frame(maxWidth: .infinity, alignment: .leading)
//
//
                    
                        Form{
                            Section(header: Text("Select Goal").font(Font.custom("SF Pro", size: 20).weight(.semibold))) {
                                RadioButtons(selectedOption: $sprayingObjective, options: ["Prevent Weeds", "Kill Weeds", "Surveying", "Mapping"])
                            }
                            
                        }
                    Spacer()
//                    NavigationLink(destination:) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 365, height: 49)
                            .background(Color(red: 0.1, green: 0.11, blue: 0.12))
                        
                            .cornerRadius(10)
                            .overlay(
                                Text("Confirm")
                                    .font(
                                        Font.custom("SF Pro", size: 24)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(.white)
                            )
                    }.padding(.top,10)
                    
                    
                    
                    
                }.navigationTitle("Select a Plot")
                    .navigationBarTitleDisplayMode(.inline)
                
                
                
        //    }
            
        }
    }
    struct RadioButtons: View {
        @Binding var selectedOption: String?
        let options: [String]
        
        var body: some View {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selectedOption = option
                }) {
                    HStack {
                        Text(option)
                        Spacer()
                        Image(systemName: selectedOption == option ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(.blue)
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}


#Preview {
    PlotBooking()
}
