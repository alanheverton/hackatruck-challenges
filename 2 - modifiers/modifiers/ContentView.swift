//
//  ContentView.swift
//  modifiers
//
//  Created by Turma02-2 on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Image("truck-2")
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .padding()
            
            VStack{
                Text("HackaTruck")
                    .foregroundStyle(.red)
                
                Text("77 universidades")
                    .foregroundStyle(.blue)
                
                Text("5 regioes do Brasil")
                    .foregroundStyle(.yellow)
            }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
