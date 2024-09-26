//
//  ContentView.swift
//  navigationView
//
//  Created by Turma02-2 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.fundo.ignoresSafeArea()
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width:220, height:100)
                    
                    Spacer()
                    
                    NavigationLink(destination: Modo1()){
                        Text("Modo 1")
                            .bold()
                            .frame(width:200, height:44)
                            .padding(20)
                            .background(.pink)
                            .foregroundColor(.white)
                            .cornerRadius(9.0)
                    }
                    
                    NavigationLink(destination: Modo2()){
                        Text("Modo 2")
                            .bold()
                            .frame(width:200, height:44)
                            .padding(20)
                            .background(.pink)
                            .foregroundColor(.white)
                            .cornerRadius(9.0)
                    }
                    
                    NavigationLink(destination: Modo3()){
                        Text("Modo 3")
                            .bold()
                            .frame(width:200, height:44)
                            .padding(20)
                            .background(.pink)
                            .foregroundColor(.white)
                            .cornerRadius(9.0)
                        
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
