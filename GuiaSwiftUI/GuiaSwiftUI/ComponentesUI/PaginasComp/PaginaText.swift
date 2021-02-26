//
//  PaginaText.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 24/02/21.
//

import SwiftUI

struct PaginaText : View {
    let corPagina: Color
    @State private var showTamanhos = false
    @State private var showPesos = false
    @State private var showCores = false
    @State private var showModoEscuro = false
    @State private var showAlinhamentos = false
    @State private var showEspacamentos = false
    @State private var showLimiteLinhas = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Text", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: {showTamanhos.toggle()}) {
                        BotaoRetangular(nome: "Tamanhos")
                    }
                    .sheet(isPresented: $showTamanhos) { Texto.Tamanhos() }
                    
                    BotaoRetangular(nome: "Pesos")
                        .onTapGesture { showPesos.toggle() }
                        .sheet(isPresented: $showPesos) { Texto.Pesos() }
                    
                    BotaoRetangular(nome: "Cores")
                        .onTapGesture { showCores.toggle() }
                        .sheet(isPresented: $showCores) { Texto.Cores() }
                    
                    BotaoRetangular(nome: "Modo claro ou escuro?")
                        .onTapGesture { showModoEscuro.toggle() }
                        .sheet(isPresented: $showModoEscuro) {
                            Texto.AparelhoLightDarkMode()
                        }
                    
                    BotaoRetangular(nome: "Alinhamentos")
                        .onTapGesture { showAlinhamentos.toggle() }
                        .sheet(isPresented: $showAlinhamentos) {
                            Texto.Alinhamento()
                        }
                    
                    BotaoRetangular(nome: "Espaçamentos")
                        .onTapGesture { showEspacamentos.toggle() }
                        .sheet(isPresented: $showEspacamentos) {
                            Texto.EspacoLinhas()
                        }
                    
                    BotaoRetangular(nome: "Limite de linhas")
                        .onTapGesture { showLimiteLinhas.toggle() }
                        .sheet(isPresented: $showLimiteLinhas) {
                            Texto.LimiteLinhas()
                        }
                    
                    Espacinho()
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaText_Previews: PreviewProvider {
    static var previews: some View {
        PaginaText(corPagina: .blue)
    }
}
