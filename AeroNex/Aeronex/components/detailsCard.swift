import SwiftUI

struct detailsCard: View {
    @State private var cropType = ""
    @State private var PlotSize = ""
    @State private  var Age = ""
    @State private var PlantingDate = ""
    var body: some View {
        VStack{
            
            
            HStack{
                Text("Crop Type")
                    .font(
                        Font.custom("SF Pro", size: 15)
                            .weight(.semibold)
                    )
                    .foregroundColor(.gray)
                    .frame(width: 84, height: 26, alignment:.leading)
                Spacer()
                
                TextField("Corn",text:$cropType)
                    .font(
                        Font.custom("SF Pro", size: 15)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 84, height: 26)
                
            }.frame(maxWidth: .infinity)
            
            
            HStack{
                Text("Plot Size")
                    .font(
                        Font.custom("SF Pro", size: 15)
                            .weight(.semibold)
                    )
                    .foregroundColor(.gray)
                    .frame(width: 84, height: 26, alignment:.leading)
                Spacer()
                
                TextField("1 Acre",text:$PlotSize)
                    .font(
                        Font.custom("SF Pro", size: 15)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 84, height: 26)
                
            }.frame(maxWidth: .infinity)
                .padding(.top,5)
            HStack{
                
                
                Text("Age")
                    .font(
                        Font.custom("SF Pro", size: 15)
                            .weight(.semibold)
                    )
                    .foregroundColor(.gray)
                    .frame(width: 84, height: 26, alignment:.leading)
                Spacer()
                
                TextField("60 days", text: $Age)
                    .font(
                        Font.custom("SF Pro", size: 15)
                            .weight(.semibold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 84, height: 26)
                
            }.frame(maxWidth: .infinity)
                .padding(.top,5)
            
            
            HStack{
                Text("Planting Date")
                    .font(
                        Font.custom("SF Pro", size: 15)
                            .weight(.semibold)
                    )
                    .foregroundColor(.gray)
                    .frame(width: 100, height: 26, alignment:.leading)
                Spacer()
                
                TextField("30/10/23", text: $PlantingDate)
                    .font(
                        Font.custom("SF Pro", size: 15)
                            .weight(.bold)
                    )
                    .foregroundColor(.black)
                    .frame(width: 84, height: 26)
                
            }.frame(maxWidth: .infinity)
                .padding(.top,5)
            
            
        }.padding(.horizontal)
    }
}

#Preview {
    detailsCard()
}
