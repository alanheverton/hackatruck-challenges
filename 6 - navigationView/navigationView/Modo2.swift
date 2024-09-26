//
//  Modo2.swift
//  navigationView
//
//  Created by Turma02-2 on 23/09/24.
//

import SwiftUI

struct Modo2: View {
    
@State var nome: String = ""
    
    var body: some View {
        ZStack{
            Color.fundo.ignoresSafeArea()
            VStack{
                Text("Modo 2")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
                TextField("Escreva seu nome", text: $nome)
                    .foregroundStyle(.white)
                    .padding(10)
            }
        }
    }
}

#Preview {
    Modo2()
}
