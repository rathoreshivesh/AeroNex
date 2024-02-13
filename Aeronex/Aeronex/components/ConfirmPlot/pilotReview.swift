//
//  pilotReview.swift
//  checking
//
//  Created by Devansh Agarwal on 11/02/24.
//

import SwiftUI

struct pilotReview: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                ZStack{
                    RoundedRectangle(cornerRadius: 4)
                        .foregroundColor(.clear)
                        .background(Color(.rect))
                        .frame(width: 346, height: 135)
                    
                    HStack{
                        Image("dpPhoto")
                            .frame(width:100,height: 100)
                        
                        VStack{
                            //Michael Nowak
                            Text("Michael Nowak").font(.system(size: 16, weight: .semibold))
                        }
                    }
                }
                
            }.navigationTitle("Michael Nowak")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    pilotReview()
}
