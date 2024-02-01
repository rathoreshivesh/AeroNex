//
//  searchBar.swift
//  checking
//
//  Created by Devansh Agarwal on 28/01/24.
//

import SwiftUI

struct searchBar: View {
    @State private var searchText: String = ""
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 344, height: 46)
                .background(Color(red: 0.46, green: 0.46, blue: 0.5).opacity(0.12))
                .cornerRadius(5)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            
            HStack{
                Image("ic-search1")
                    .frame(width: 25, height: 25)
                    .aspectRatio(contentMode: .fill)
                
                TextField("Search by Project Name", text: $searchText)
                    .font(
                        Font.custom("SF Pro", size: 13)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                    .frame(width: 260, alignment: .leading)
                
                Image("ic-mic")
                    .frame(width: 25, height: 25)
                    .aspectRatio(contentMode: .fill)
            }.frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,30)
            
        }
    }
}

#Preview {
    searchBar()
}
