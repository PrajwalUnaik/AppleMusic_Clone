//
//  MiniPlayer.swift
//  AppleMusic
//
//  Created by Prajwal U on 19/01/24.
//

import SwiftUI

struct MiniPlayer: View {
    var animation: Namespace.ID
    @Binding var expand : Bool
    
    var height = UIScreen.main.bounds.height / 3
    var safearea = UIApplication.shared.windows.first?.safeAreaInsets
    @State var Player : CGFloat = 0
    @State var volume : CGFloat = 0
    
    var body: some View {
        
        
        VStack{
            
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0  , height: expand ?  4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top , expand ? safearea?.top : 0)
                .padding(.vertical , expand ? 30 : 0)
            
            
            HStack(alignment: .center, spacing: 15){
                if expand{Spacer(minLength: 0)}
                Image("Lady Gaga")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ?  height : 48, height: expand ?  height : 48)
                    .cornerRadius(15)
                    .matchedGeometryEffect(id: "Image", in: animation)
                //.padding(.vertical)
                
                if !expand {
                    Text("Poker face")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                
                Spacer(minLength: 0)
                
                if !expand {
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
            }
            .padding(.horizontal)
            
            VStack{
                
                HStack{
                    if expand{
                        VStack(alignment: .leading, spacing:0){
                            Text("Poker Face")
                                .font(.title2)
                                .foregroundColor(Color.primary)
                                .fontWeight(.bold)
                                .matchedGeometryEffect(id: "Text", in: animation)
                            Text("Lady Gaga")
                                .font(.title3)
                                .foregroundColor(Color.secondary)
                        }
                    }
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        ZStack{
                            Image(systemName: "star")
                                .font(.title2)
                                .foregroundColor(.primary)
                            Circle().foregroundColor(.primary).opacity(0.6)
                                .frame(width: 35)
                        }
                    })
                    
                    
                    Button(action: {}, label: {
                        ZStack{ Image(systemName: "ellipsis")
                                .font(.title2)
                                .foregroundColor(.primary)
                            Circle().foregroundColor(.primary).opacity(0.6)
                                .frame(width: 35)
                        }
                    })
                    .padding(.leading)
                }
                .padding()
                .padding(.top)
                
                HStack{Slider(value: $Player)}.padding()
                    .accentColor(.primary)
                
                HStack{
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "backward.fill")
                    })
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "play.fill")
                    })
                    
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "forward.fill")
                    })
                    
                    Spacer()
                }
                .font(.largeTitle)
                .padding()
                .foregroundColor(.primary)
                
                
                HStack{
                    Image(systemName: "speaker")
                    Slider(value: $volume)
                    Image(systemName: "speaker.wave.2")
                }.padding()
                    .accentColor(.primary)
                
                HStack(spacing:15){
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "quote.bubble")
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "airplayaudio")
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "list.bullet")
                    })
                    Spacer()
                }.font(.title2)
                    .foregroundColor(.primary)
                
                Spacer(minLength: 0)
                
            }.frame(width: expand ? nil : 0 , height: expand ? nil : 0)
                .opacity(expand ? 1 : 0)
            
        }.frame(maxHeight: expand ? .infinity : 68)
            .background(.thinMaterial)
            .cornerRadius(10)
            .offset(y: expand ? 0 : -48)
            .onTapGesture {
                withAnimation(.spring()){
                    expand.toggle()
                }
            }
            .ignoresSafeArea(.all)
    }
}



//#Preview {
//    MiniPlayer(animation: animation, expand: $expand)
//}
