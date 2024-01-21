//
//  SearchView.swift
//  AppleMusic
//
//  Created by Prajwal U on 20/01/24.
//

import SwiftUI
import SceneKit

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VerticalScrollView()
            }.navigationTitle("Search")
        }.searchable(text: $searchText)
    }
}

#Preview {
    SearchView()
}
