//
//  PaginaToggle.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 20/12/21.
//

import SwiftUI

struct PaginaToggle: View {
    let corPagina: Color
    @State private var showExemploInicial = false
    @State private var showEstilos = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Toggle", corBarra: corPagina)
                Spacer()
            }
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: {showExemploInicial.toggle()}) {
                        BotaoRetangular(nome: "Exemplo inicial")
                    }
                    .sheet(isPresented: $showExemploInicial) {
                        MyToggle.ExemploInicial()
                    }
                    
                    Button(action: {showEstilos.toggle()}) {
                        BotaoRetangular(nome: "Estilos")
                    }
                    .sheet(isPresented: $showEstilos) {
                        MyToggle.Estilos()
                    }
                    
                    Espacinho()
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaToggle_Previews: PreviewProvider {
    static var previews: some View {
        PaginaToggle(corPagina: .blue)
    }
}
