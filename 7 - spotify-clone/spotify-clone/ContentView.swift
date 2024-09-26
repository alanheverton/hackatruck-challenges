//
//  ContentView.swift
//  spotify-clone
//
//  Created by Turma02-2 on 24/09/24.
//

import SwiftUI

struct ContentView: View {
    
    struct Song : Hashable{
        var name : String
        var artist : String
        var capa : String
    }
    var arrayMusicas = [
        Song(name: "Notes pour trop tard", artist: "Orelsan", capa: "https://i.scdn.co/image/ab67616d0000b273b8443d0a4f57b844ab1e0e39"),
        Song(name: "San", artist: "Orelsan", capa: "https://i.scdn.co/image/ab67616d0000b273b8443d0a4f57b844ab1e0e39"),
        Song(name: "Defaite de Famille", artist: "Orelsan", capa: "https://i.scdn.co/image/ab67616d0000b273b8443d0a4f57b844ab1e0e39"),
        Song(name: "Si Seul", artist: "Orelsan", capa: "https://i.scdn.co/image/ab67616d0000b273b8443d0a4f57b844ab1e0e39"),
        Song(name: "Basique", artist: "Orelsan", capa: "https://i.scdn.co/image/ab67616d0000b273b8443d0a4f57b844ab1e0e39"),
        Song(name: "Dis-moi", artist: "Orelsan", capa: "https://i.scdn.co/image/ab67616d0000b273b8443d0a4f57b844ab1e0e39"),
    ]
    var body: some View {
        
        ZStack{
            
                LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom)

                VStack (){

                    Image("orelsan")
                        .resizable()
                        .frame(width: 200, height: 200)
                        

                    VStack (alignment: .leading){
                        Text("As mais tocadas")
                            .font(.title)
                            .foregroundStyle(.white)
                            .bold()
                            .offset(x: -70)
                        
                        HStack{
                            Image("orelsan")
                                .resizable()
                                .frame(width:20, height: 20)
                                .offset(x:-75)
                            
                            Text("Spotify")
                                .offset(x:-80)
                                .foregroundColor(.white)
                                .bold()
                        }
                        ForEach(arrayMusicas, id: \.self) {item in
                            HStack{
                                AsyncImage(url: URL(string: item.capa)){ result in
                                    result.image?
                                        .resizable()
                                        .scaledToFit()
                                }
                                .frame(width:50, height:50)
                                .offset(x:-80)
                                
                                VStack(alignment: .leading){
                                    Text(item.name)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .offset(x:-80)
                                    
                                    Text(item.artist)
                                        .foregroundStyle(.white)
                                        .offset(x:-80)
                                }
                                Image(systemName: "ellipsis")
                                
                                
                            }
                        }
                    }
                }
                
            }
            .edgesIgnoringSafeArea(.all)
        }
}

#Preview {
    ContentView()
}
