//
//  MyToggle.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 20/12/21.
//

import SwiftUI

struct MyToggle_Previews: PreviewProvider {
    static var previews: some View {
        MyToggle.Estilos()
    }
}

struct MyToggle {
    struct ExemploInicial: View {
        @State private var toggle1Ligado = false
        @State private var toggle2Ligado = false
        @State private var toggle3Ligado = false
        
        var body: some View {
            VStack {
                Text("Exemplos de Toggle").font(.title).padding()
                Toggle("Toggle 1", isOn: $toggle1Ligado)
                
                Toggle(isOn: $toggle2Ligado) {
                    Text("Toggle 2").foregroundColor(.blue).bold()
                }
                Toggle(isOn: $toggle3Ligado) {}.border(Color.blue)
                
            }.padding(.horizontal)
        }
    }
    
    struct Estilos: View {
        @State private var toggle1Ligado = false
        @State private var toggle2Ligado = false
        @State private var toggle3Ligado = false
        
        var body: some View {
            VStack {
                Text("Estilos de Toggle").font(.title).padding()
                
                Toggle("Estilo automatic", isOn: $toggle1Ligado)
                    .toggleStyle(.automatic)
                Toggle("Estilo switch", isOn: $toggle2Ligado)
                    .toggleStyle(.switch)
                Toggle("Estilo button", isOn: $toggle3Ligado)
                    .toggleStyle(.button)
                
            }.padding(.horizontal)
        }
    }
}


