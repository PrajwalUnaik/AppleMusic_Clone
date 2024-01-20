//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Prajwal U on 20/01/24.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    // MARK: - Playlists

                    HStack {
                        Label("Playlists", systemImage: "music.note.list")
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "chevron.right").font(.callout)
                                .foregroundColor(.secondary)
                        })
                    }
                    .padding(.vertical, 8)

                    // MARK: - Artist

                    HStack {
                        Label("Artist", systemImage: "music.mic")
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "chevron.right").font(.callout)
                                .foregroundColor(.secondary)
                        })
                    }
                    .padding(.vertical, 8)

                    // MARK: - Albums

                    HStack {
                        Label("Album", systemImage: "square.stack")
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "chevron.right").font(.callout)
                                .foregroundColor(.secondary)
                        })
                    }
                    .padding(.vertical, 8)

                    // MARK: - Genres

                    Button(action: { print("guitars button pressed") }, label: {
                        HStack { Label("Genres", systemImage: "guitars")
                            Spacer()
                            Image(systemName: "chevron.right").font(.callout)
                                .foregroundColor(.secondary)
                        }
                    })
                    .padding(.vertical, 8)

                    // MARK: - Downloaded

                    Button(action: { print("Download button pressed") }, label: {
                        HStack { Label("Downloaded", systemImage: "arrow.down.circle")
                            Spacer()
                            Image(systemName: "chevron.right").font(.callout)
                                .foregroundColor(.secondary)
                        }
                    })
                    .padding(.vertical, 8)

                    HStack(alignment: .center) {
                        Button(action: {}, label: { Text("Recently Added") })
                        Spacer()
                    }.font(.title2)
                        .bold()
                        .foregroundColor(.primary)

                    RecentlyAdded()

                }.listStyle(.plain)
                    .scrollIndicators(.hidden)
                    .navigationTitle("Library")
                    .navigationBarItems(trailing: EditButton())
                    .accentColor(.red)
            }
        }
    }
}

#Preview {
    LibraryView()
}
