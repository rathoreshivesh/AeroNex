//
//  inspectionPage.swift
//  Aeronex
//
//  Created by user2 on 30/03/24.
//

import SwiftUI

struct inspectionPage: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 393, height: 80)
                    .background(Color(red: 0.23, green: 0.83, blue: 0.65))
                Text("Inspection")
                    .font(.system(size: 36, weight: .bold))
                    .frame(width: 360,alignment: .leading)
                    .padding(.top,30)
            }
            
            VStack{
                HStack{
                    Image("")
                }
            }
            Spacer()
        }
    }
}

#Preview {
    inspectionPage()
}
