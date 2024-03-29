//
//  HorizontalScroll_top.swift
//  AppleMusic
//
//  Created by Prajwal U on 19/01/24.
//

import SwiftUI

struct HorizontalScrollTopCard: View {
    
    let headLine: String
    let imageName: String
    let artistName: String
    let colorBlock: Color
    
    var body: some View {
        VStack {
            HStack {
                Text(headLine).font(.caption).foregroundColor(.gray)
                Spacer()
            }.frame(width: 260)
            ZStack {
                Rectangle()
                    .foregroundStyle(colorBlock.gradient).opacity(0.6)
                    .frame(width: 260,height: 346)
                
                VStack {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260 ,height: 260)
                    Spacer()
                    
                    Text(artistName)
                        .font(.subheadline)
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                        .padding([.trailing ,.leading])
                    Spacer()
                    
                }.frame(width: 260,height: 346)
            }.cornerRadius(10)
        }
    }
}

#Preview {
    HorizontalScrollTopCard(headLine: "Made for you", imageName: "Artist-1", artistName: "G Mills, Bobby, Azayaka, Kendrick Lamar, Adele, J. Cole, Halsey" , colorBlock: .pink)
}
