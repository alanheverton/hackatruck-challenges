//
//  ContentView.swift
//  view
//
//  Created by Turma02-2 on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack{
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                    
                Spacer()
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.blue)
            }
            
            Spacer()
            
            HStack{
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.green)
                Spacer()
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.yellow)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
