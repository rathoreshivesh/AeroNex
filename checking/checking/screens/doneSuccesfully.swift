//
//  doneSuccesfully.swift
//  checking
//
//  Created by Devansh Agarwal on 05/01/24.
//

import SwiftUI

struct doneSuccesfully: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image("Frame")
            .frame(width: 68, height: 68)
            Text("Booking Confirmed!")
              .font(Font.custom("SF Pro", size: 36))
              .fontWeight(.heavy)
              .foregroundColor(Color(red: 0.12, green: 0.14, blue: 0.19))
        }
        .padding(0)
        .frame(maxWidth: .infinity, alignment: .center)
    }
    
}

#Preview {
    doneSuccesfully()
}
