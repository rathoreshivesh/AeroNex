//
//  aeroImg.swift
//  checking
//
//  Created by Devansh Agarwal on 29/01/24.
//

import SwiftUI

struct aeroImg: View {
    var body: some View {
      
            ZStack(alignment: .leading){
                Image("aero")
                    .frame(alignment: .center)
                    .offset(x: 10, y: -60)
                VStack(alignment: .leading){
                    Text("Need \na drone? Try")
                        .font(.system(size: 36).weight(.bold))
                    Text("AERONEX")
                        .font(.system(size: 40).weight(.black))
                        .padding(.bottom, 10)
                        .foregroundColor(.teel)
                }
                .padding(.leading, 20)
            }.padding(.top)
            
        
    }
}

#Preview {
    aeroImg()
}
