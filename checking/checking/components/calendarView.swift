//
//  calendarView.swift
//  checking
//
//  Created by Devansh Agarwal on 28/01/24.
//

import SwiftUI

struct calendarView: View {
    @State private var selectedDate = Date()
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: selectedDate)
    }
    var body: some View {
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
                
                Text("\(formattedDate)")
                    .font(Font.custom("SF Pro", size: 16))
                    .foregroundColor(.black)
                Spacer()
                
                Image("calendar-day")
                    .overlay{
                        DatePicker("", selection: $selectedDate)
                            .labelsHidden()
                            .blendMode(.destinationOver)
                    }
                
                
                
                
                
                
            }
            .padding(.horizontal, 40.0)
        }
        
    }
}

#Preview {
    calendarView()
}
