//
//  PaginaTexto.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 24/02/21.
//

import SwiftUI

struct PaginaTexto : View {
    @State private var showTamanhos = false
    @State private var showPesos = false
    @State private var showCores = false
    @State private var showModoEscuro = false
    @State private var showAlinhamentos = false
    @State private var showEspacamentos = false
    @State private var showLimiteLinhas = false
    
    var body: some View {
        VStack {
            BotaoSimples(nome: "Tamanhos")
                .onTapGesture { showTamanhos.toggle() }
                .sheet(isPresented: $showTamanhos) { Texto.Tamanhos() }
            
            BotaoSimples(nome: "Pesos")
                .onTapGesture { showPesos.toggle() }
                .sheet(isPresented: $showPesos) { Texto.Pesos() }
            
            BotaoSimples(nome: "Cores")
                .onTapGesture { showCores.toggle() }
                .sheet(isPresented: $showCores) { Texto.Cores() }
            
            BotaoSimples(nome: "Modo claro ou escuro?")
                .onTapGesture { showModoEscuro.toggle() }
                .sheet(isPresented: $showModoEscuro) {
                    Texto.AparelhoLightDarkMode()
                }
            
            BotaoSimples(nome: "Alinhamentos")
                .onTapGesture { showAlinhamentos.toggle() }
                .sheet(isPresented: $showAlinhamentos) {
                    Texto.Alinhamento()
                }
            
            BotaoSimples(nome: "Espaçamentos")
                .onTapGesture { showEspacamentos.toggle() }
                .sheet(isPresented: $showEspacamentos) {
                    Texto.EspacoLinhas()
                }
            
            BotaoSimples(nome: "Limite de linhas")
                .onTapGesture { showLimiteLinhas.toggle() }
                .sheet(isPresented: $showLimiteLinhas) {
                    Texto.LimiteLinhas()
                }
        }.navigationBarTitle("Text")
        
    }
}

struct PaginaTexto_Previews: PreviewProvider {
    static var previews: some View {
        PaginaTexto()
    }
}
