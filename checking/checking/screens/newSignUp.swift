//
//  newSignUp.swift
//  checking
//
//  Created by Devansh Agarwal on 30/01/24.
//

import SwiftUI

struct newSignUp: View {
    var body: some View {
        VStack{
            ZStack(alignment: .leading){
                Image("aero")
                    .frame(alignment: .center)
                    .offset(x: 10, y: -60)
                VStack(alignment: .leading){
                    Text("Create an \nAccount!")
                        .font(.system(size: 36).weight(.bold))
                    
                }
                .padding(.leading, 20)
            }.padding(.top)
            
            Spacer()
        }
    }
}

#Preview {
    newSignUp()
}
