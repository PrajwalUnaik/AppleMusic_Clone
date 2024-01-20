//
//  RadioView.swift
//  AppleMusic
//
//  Created by Prajwal U on 20/01/24.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical)
            {
                Block1()
                
                HStack(alignment:.center){
                    Button(action: {}, label: {
                        Text("Made for you")
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    })
                    Spacer()
                }.padding(.leading)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.primary)
                
                Horizontalradio()
                
                
                HStack(alignment:.center){
                    Button(action: {}, label: {
                        Text("Made for you")
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    })
                    Spacer()
                }.padding(.leading)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.primary)
                
                Horizontalradio()
                
            }.navigationTitle("Radio")
        }
    }
}

#Preview {
    RadioView()
}
