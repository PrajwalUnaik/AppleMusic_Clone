//
//  VerticalScrollView.swift
//  AppleMusic
//
//  Created by Prajwal U on 20/01/24.
//

import SwiftUI

struct VerticalScrollView: View {
    var body: some View {
        ScrollView(.vertical){
            
            
            HStack(spacing:10) {
                VerticalRowCard(Image1: "Cat1", Text1: "Pop")
                VerticalRowCard(Image1: "Cat1", Text1: "Rock")
            }.padding()
            HStack(spacing:10) {
                VerticalRowCard(Image1: "Cat2", Text1: "Pop")
                VerticalRowCard(Image1: "Cat2", Text1: "Rock")
            }.padding()
            HStack(spacing:10) {
                VerticalRowCard(Image1: "Cat3", Text1: "Pop")
                VerticalRowCard(Image1: "Cat3", Text1: "Rock")
            }.padding()
            HStack(spacing:10) {
                VerticalRowCard(Image1: "Cat5", Text1: "Pop")
                VerticalRowCard(Image1: "Cat5", Text1: "Rock")
            }.padding()
            
            HStack(spacing:10) {
                VerticalRowCard(Image1: "Cat1", Text1: "Pop")
                VerticalRowCard(Image1: "Cat1", Text1: "Rock")
            }.padding()
            HStack(spacing:10) {
                VerticalRowCard(Image1: "Cat2", Text1: "Pop")
                VerticalRowCard(Image1: "Cat2", Text1: "Rock")
            }.padding()
            HStack(spacing:10) {
                VerticalRowCard(Image1: "Cat3", Text1: "Pop")
                VerticalRowCard(Image1: "Cat3", Text1: "Rock")
            }.padding()
            HStack(spacing:10) {
                VerticalRowCard(Image1: "Cat5", Text1: "Pop")
                VerticalRowCard(Image1: "Cat5", Text1: "Rock")
            }.padding()
            
        }
    }
}

#Preview {
    VerticalScrollView()
}
