//
//  calendarView.swift
//  checking
//
//  Created by Devansh Agarwal on 28/01/24.
//

import SwiftUI

struct calendarView: View {
    @State var date = Date()
    var body: some View {
        Image("calendar-day")
            .overlay{
                DatePicker("", selection: $date)
                    .labelsHidden()
                    .blendMode(.destinationOver)
            }
    }
}

#Preview {
    calendarView()
}
