//
//  writeReview.swift
//  checking
//
//  Created by Devansh Agarwal on 10/02/24.
//

import SwiftUI

struct writeReview: View {
    @State private var reviewTitle:String = ""
    @State private var review:String = ""
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                HStack(spacing:10){
                    Image("pilotPh")
                        .frame(width: 70,height: 70)
                    VStack(alignment:.leading,spacing:0){
                        //Michael Nowak
                        Text("Michael Nowak").font(.system(size: 24, weight: .semibold))
                        //Tower Inspection
                        Text("Tower Inspection").font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.gray)
                        
                    }
                   
                    
                }.padding(.leading,25)
                
                
                Divider()
                
                VStack(alignment:.leading){
                    //How would you rate it?
                    Text("How would you rate it?").font(.system(size: 16, weight: .medium))
                    HStack(spacing:0){
                       
                        Image("reviewStar")
                            .frame(width:35,height: 35)
                        Image("reviewStar")
                            .frame(width:35,height: 35)
                        Image("reviewStar")
                            .frame(width:35,height: 35)
                        Image("reviewStar")
                            .frame(width:35,height: 35)
                        Image("reviewStar")
                            .frame(width:35,height: 35)
                    }
                }.padding()
                
                VStack(alignment:.leading){
                    Text("Title your review").font(.system(size: 16, weight: .medium))
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 4)
                            .strokeBorder(.gray,lineWidth: 1)
                            .frame(width: 357, height: 46)
                        VStack(alignment:.leading){
                            TextField("What’s most important to know?",text: $reviewTitle).font(.system(size: 15, weight: .light))
                                .foregroundStyle(.black)
                        }.padding(.leading)
                    }
                }.padding()
                
                
                VStack(alignment:.leading){
                    //Write your review
                    Text("Write your review").font(.system(size: 16, weight: .medium))
                    ZStack{
                        RoundedRectangle(cornerRadius: 4)
                            .strokeBorder(.gray,lineWidth: 1)
                            .frame(width: 357, height: 149)
                        VStack(alignment:.leading){
                            TextField("What did you like or dislike? Why did you choose this pilot for your work?",text: $review).font(.system(size: 15, weight: .light))
                                .foregroundStyle(.black)
                        }.padding(.leading)
                    }
                }.padding()
                Spacer()
            }
            .navigationTitle("Review")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    writeReview()
}
