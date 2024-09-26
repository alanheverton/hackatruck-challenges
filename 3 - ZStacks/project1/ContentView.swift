//
//  ContentView.swift
//  project1
//
//  Created by Turma02-2 on 19/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var nomePessoa : String = ""
    @State var alerta: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Image(.fundo)
                .resizable()
                .frame(width:1000, height:1000)
                .blur(radius: 1)
                .opacity(0.2)
            
            VStack{
                
                Spacer()

                Text("Bem vindo, \(nomePessoa)")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                TextField("Digite seu nome aqui", text: $nomePessoa)
                    .frame(width:250, height: 25)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Image(.logo)
                    .resizable()
                    .frame(width: 230, height: 100)
                    .shadow(radius: 20)
                
                Image(.truck)
                    .resizable()
                    .frame(width: 230, height:100)
                    .offset(y:50)
                    .shadow(radius: 20)
                
                Spacer()
                
                Button("Entrar") {
                    alerta = true
                }
                .alert(isPresented: $alerta){
                    
                Alert(title: Text("ALERTA!"),
                      
                message: Text("Voce ira iniciar o desafio da aula agora."),
                      
                      dismissButton: .default(Text("Vamos la!"))
                )
                }
                
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
