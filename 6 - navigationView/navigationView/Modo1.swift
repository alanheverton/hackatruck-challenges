//
//  Modo1.swift
//  navigationView
//
//  Created by Turma02-2 on 23/09/24.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        ZStack{
            Color.fundo.ignoresSafeArea()
            VStack{
                Text("Modo 1")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("Nome: Tiago\nSobrenome: Pereira")
                    .frame(width:200, height:120)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(9.0)
                Spacer()
            }
        }
    }
}

#Preview {
    Modo1()
}
