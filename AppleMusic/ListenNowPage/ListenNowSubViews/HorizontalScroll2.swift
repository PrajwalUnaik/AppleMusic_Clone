//
//  HorizontalScroll2.swift
//  AppleMusic
//
//  Created by Prajwal U on 19/01/24.
//

import SwiftUI

struct HorizontalScroll2: View {
    var body: some View {
        ScrollView(.horizontal ,showsIndicators: false){
            HStack {
                HorizontalScollBottonCard( imageName: "Artist-9", artistName: "Tame Impala", SubartistName: "Artist")
                HorizontalScollBottonCard( imageName: "Artist-10", artistName: "The Beatles", SubartistName: " Music Rock")
                HorizontalScollBottonCard( imageName: "Artist-5", artistName: "Frank Ocean", SubartistName: "Apple Music")
                HorizontalScollBottonCard( imageName: "Artist-1", artistName: "Halsey", SubartistName: "")
                HorizontalScollBottonCard( imageName: "Artist-4", artistName: "bro", SubartistName: "Music")
            }
            
        }.padding(.leading)
    }
}

#Preview {
    HorizontalScroll2()
}
