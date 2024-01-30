//
//  termsAndCondition.swift
//  checking
//
//  Created by Devansh Agarwal on 29/01/24.
//

import SwiftUI

struct termsAndCondition: View {
    var body: some View {
        VStack{
            Text("If you are creating a new account,")
                .font(.footnote)
            HStack(spacing: 0){
                Button(action: {}) {
                    Text("Terms & Conditions")
                        .font(.footnote)
                        .foregroundColor(Color.blue)
                        .underline()
                }
                Text(" and ")
                    .font(.footnote)
                Button(action: {}) {
                    Text("Privacy Policy")
                        .font(.footnote)
                        .foregroundColor(Color.blue)
                        .underline()
                }
                Text(" will apply.")
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    termsAndCondition()
}
