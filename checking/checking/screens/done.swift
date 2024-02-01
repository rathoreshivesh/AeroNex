//
//  done.swift
//  checking
//
//  Created by Devansh Agarwal on 05/01/24.
//

import SwiftUI

struct done: View {
    var body: some View {
        Spacer()
        VStack(alignment: .center, spacing: 0) {
            Image("ic-done")
            .frame(width: 68, height: 68)
            Text("Done")
              .font(Font.custom("SF Pro", size: 16))
              .foregroundColor(Color(red: 0.12, green: 0.14, blue: 0.19))
        }
        .padding(0)
        .frame(maxWidth: .infinity, alignment: .center)
        Spacer()
    }
}

#Preview {
    done()
}
