//
//  ratingView.swift
//  checking
//
//  Created by Devansh Agarwal on 12/02/24.
//

import SwiftUI

struct ratingView: View {
    var body: some View {
            BarChartView()
        }
    }

    struct BarChartView: View {
        let data: [(String, Double)] = [
            ("5", 300),
            ("4", 100),
            ("3", 20),
            ("2", 10),
            ("1", 2)
        ]
        
        var maxValue: Double {
            data.map { $0.1 }.max() ?? 0
        }
        
        var body: some View {
            VStack(alignment: .leading,spacing: 2) {
                ForEach(data, id: \.0) { item in
                    HStack(spacing:10){
                        Text(item.0)
                            .font(.caption)
                            .foregroundColor(.gray)
                        Image("greenStar")
                            .foregroundColor(.teel)
                        
                        CustomProgressBar(value: item.1, maxValue: maxValue)
                            .frame(height: 20)
                        Text("\(Int(item.1))")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }
            
        }
    }

    struct CustomProgressBar: View {
        var value: Double
        var maxValue: Double
        
        var fillWidth: CGFloat {
            CGFloat(value / maxValue)
        }
        
        var body: some View {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width:100,height:8)
                    .opacity(0.3)
                    .foregroundColor(.gray)
                
                Rectangle()
                    .frame(width: fillWidth * 100, height: 8) // Assuming a max width of 100 for simplicity
                    .foregroundColor(.teel)
                    .animation(.linear, value: value)
            }
            .cornerRadius(40)
        }
}

#Preview {
    ratingView()
}
