//
//  ContentView.swift
//  tab-view
//
//  Created by Turma02-2 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            RosaView()
                .tabItem{
                    Label("Rosa", systemImage: "paintbrush.fill")
            }
            AzulView()
                .tabItem{
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            CinzaView()
                .tabItem{
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            ListaView()
                .tabItem{
                    Label("Lista", systemImage: "list.dash")
                }
        }
    }
}

#Preview {
    ContentView()
}
