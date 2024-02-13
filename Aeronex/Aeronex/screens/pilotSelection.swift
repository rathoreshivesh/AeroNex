//
//  pilotSelection.swift
//  checking
//
//  Created by Devansh Agarwal on 08/01/24.
//

import SwiftUI

struct pilotSelection: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:20){
                    searchBarBookings()
                    
                    pilotBookingCard()
                    
                    pilotBookingCard()
                    
                }
                .navigationTitle("Book Your Pilot")
                
                
            }
        }
    }
}

#Preview {
    pilotSelection()
}
