//
//  ContentView.swift
//  imc
//
//  Created by Turma02-2 on 20/09/24.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State private var pesoString: String = ""
    @State private var alturaString: String = ""
    @State private var imc: Double = 0.0
    @State private var resultado: Bool = false
    @State private var backgroundImage: String = "normal"
    
    var body: some View {
        
        VStack {
            Text("Calculadora de IMC")
                .font(.largeTitle)
            
            Spacer()
            
            TextField("Digite seu peso (kg)", text: $pesoString)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
            
            TextField("Digite sua altura (cm)", text: $alturaString)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
            
            Button(action: {
                calcularIMC()
            }, label: {
                Text("Calcular")
                    .fontWeight(.semibold)
                    .font(.title)
            })
            .padding()
            .background(Color.blue.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(40)
            
            if resultado {
                Text(resultadoIMC())
                    .font(.title)
                    .padding()
            }
            
            Spacer()
            
            Image("imc")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 220)
                .shadow(radius: 20)
        }
        .padding()
    }
    
    private func calcularIMC() {
        guard let peso = Double(pesoString),
              let altura = Double(alturaString),
              altura > 0 else {
            resultado = false
            return
        }
        
        let alturaEmMetros = altura / 100
        imc = peso / (alturaEmMetros * alturaEmMetros)
        resultado = true
    }
    
    private func resultadoIMC() -> String {
        
        let classificacao: String
        if imc < 18.5 {
            classificacao = "Baixo peso"
        } else if imc < 25 {
            classificacao = "Normal"
        } else if imc < 30 {
            classificacao = "Sobrepeso"
        } else {
            classificacao = "Obesidade"
        }
        
        return "\(classificacao)"
    }
}

#Preview {
    ContentView()
}

    #Preview {
        ContentView()
    }

