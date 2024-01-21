//
//  VerticalRowCard.swift
//  AppleMusic
//
//  Created by Prajwal U on 20/01/24.
//

import SwiftUI

struct VerticalRowCard: View {
    let Image1:String
    let Text1:String
    var body: some View {
        ZStack(alignment:.bottomLeading) {
            Image(Image1)
                .resizable()
                .scaledToFit()
            
            
            Text(Text1)
                .fontWeight(.bold)
                .font(.caption2)
                .padding(.leading)
                .padding(.bottom)
            
        }.cornerRadius(20)
            .shadow(color: .white, radius: 2)
    }
}

#Preview {
    VerticalRowCard(Image1: "Cat2", Text1: "Pop")
}
