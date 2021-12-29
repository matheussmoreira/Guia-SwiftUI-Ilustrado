//
//  PaginaPadding.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaPreenchimento: View {
    var corPagina: Color
    @State private var showPosicoes = false
    @State private var showMultiplas = false
    @State private var showValores = false
    @State private var showIgnoresSafeArea = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Padding", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: { showPosicoes.toggle() }) {
                        BotaoRetangular(nome: "Padding - Posições")
                    }
                    .sheet(isPresented: $showPosicoes) { Preenchimento.PaddingPosicoes() }
                    
                    Button(action: { showMultiplas.toggle() }) {
                        BotaoRetangular(nome: "Padding - Múltiplas posições")
                    }
                    .sheet(isPresented: $showMultiplas) { Preenchimento.PaddingMultiplasPosicoes() }
                    
                    Button(action: { showValores.toggle() }) {
                        BotaoRetangular(nome: "Padding - Valores numéricos")
                    }
                    .sheet(isPresented: $showValores) { Preenchimento.PaddingValorNumerico() }
                    
                    Button(action: { showIgnoresSafeArea.toggle() }) {
                        BotaoRetangular(nome: "Ignorando a safe area")
                    }
                    .sheet(isPresented: $showIgnoresSafeArea) { Preenchimento.IgnoresSafeArea() }
            
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct LinhaPadding_Previews: PreviewProvider {
    static var previews: some View {
        PaginaPreenchimento(corPagina: .green)
    }
}
