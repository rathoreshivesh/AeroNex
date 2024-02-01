//
//  dropDown.swift
//  checking
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI

struct dropDown: View {
    @State private var selectedSlot = 0
    let slot = ["Morning", "AfterNoon", "Noon"]

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
                Text("\(selectedSlot)")
                    .font(Font.custom("SF Pro", size: 16))
                    .foregroundColor(.black)
                Spacer()
                
                    Picker("Select an option", selection: $selectedSlot) {
                        ForEach(0..<slot.count) {          index in
                                       Text(self.slot[index]).tag(index)
                                   }
                               }
                               .pickerStyle(MenuPickerStyle())
                               .foregroundColor(.black)
                               .padding()
                
            }.padding(.horizontal,40)
            
            
            
            
        }
            
        
    }
    
    }


#Preview {
    dropDown()
}
