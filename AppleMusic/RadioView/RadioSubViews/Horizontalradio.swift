//
//  HorizontalScroll2.swift
//  AppleMusic
//
//  Created by Prajwal U on 19/01/24.
//

import SwiftUI

struct Horizontalradio: View {
    var body: some View {
        ScrollView(.horizontal ,showsIndicators: false){
            HStack {
                HorizontalScollBottonCard( imageName: "Radio-1", artistName: "Sing 2020's", SubartistName: "Apple music")
                HorizontalScollBottonCard( imageName: "Radio-2", artistName: "Taylor Swift Hits", SubartistName: " Music Pop")
                HorizontalScollBottonCard( imageName: "Radio-3", artistName: "Viral Hits", SubartistName: " Music")
                HorizontalScollBottonCard( imageName: "Radio-2", artistName: "Viral Hits", SubartistName: " Music")
                HorizontalScollBottonCard( imageName: "Radio-1", artistName: "Viral Hits", SubartistName: " Music")

            }
            
        }.padding(.leading)
    }
}

#Preview {
    Horizontalradio()
}
