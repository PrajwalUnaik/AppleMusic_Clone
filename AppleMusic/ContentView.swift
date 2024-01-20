//
//  ContentView.swift
//  AppleMusic
//
//  Created by Prajwal U on 19/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var expand = false
    
    @Namespace var animation
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                ListenNowView()
                    .tabItem {
                        Image(systemName: "play.circle")
                        Text("Listen Now")
                    }
                    .tag(0) // Tag for ListenNowView

                BrowseView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Browse")
                    }
                    .tag(1) // Tag for Browse

                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Radio")
                    }
                    .tag(2) // Tag for Radio

                Text("Library")
                    .tabItem {
                        Image(systemName: "play.square.stack.fill")
                        Text("Library")
                    }
                    .tag(3) // Tag for Library

                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    .tag(4) // Tag for Search
            }
            .accentColor(.red)

            
            MiniPlayer(animation: animation, expand: $expand)
        })
    }
}

#Preview {
    ContentView()
}
