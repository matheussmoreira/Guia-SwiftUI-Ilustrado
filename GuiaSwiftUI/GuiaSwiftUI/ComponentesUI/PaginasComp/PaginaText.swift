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
    @State private var showFatorMinEscala = false
    @State private var showTruncamento = false
    @State private var showKerning = false
    @State private var showTracking = false
    @State private var showUnderline = false
    @State private var showTachado = false
    @State private var showFontSystem = false
    @State private var showTextCase = false
    @State private var showTightening = false
    @State private var showDeslocamentoVertical = false
    @State private var showGiroHorizontal = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Text", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Group {
                        Button(action: {showTamanhos.toggle()}) {
                            BotaoRetangular(nome: "Tamanhos")
                        }
                        .sheet(isPresented: $showTamanhos) { Texto.Tamanhos() }
                        
                        Button(action: {showPesos.toggle()}) {
                            BotaoRetangular(nome: "Pesos")
                        }
                        .sheet(isPresented: $showPesos) { Texto.Pesos() }
                        
                        Button(action: {showCores.toggle()}) {
                            BotaoRetangular(nome: "Cores")
                        }
                        .sheet(isPresented: $showCores) { Texto.Cores() }
                        
                        Button(action: {showModoEscuro.toggle()}) {
                            BotaoRetangular(nome: "Modo claro ou escuro")
                        }
                        .sheet(isPresented: $showModoEscuro) { Texto.AparelhoLightDarkMode() }
                        
                        Button(action: {showAlinhamentos.toggle()}) {
                            BotaoRetangular(nome: "Alinhamentos")
                        }
                        .sheet(isPresented: $showAlinhamentos) { Texto.Alinhamento() }
                        
                        Button(action: {showEspacamentos.toggle()}) {
                            BotaoRetangular(nome: "Espaçamentos")
                        }
                        .sheet(isPresented: $showEspacamentos) { Texto.EspacoLinhas() }
                        
                        Button(action: {showLimiteLinhas.toggle()}) {
                            BotaoRetangular(nome: "Limite de linhas")
                        }
                        .sheet(isPresented: $showLimiteLinhas) { Texto.LimiteLinhas() }
                        
                        Button(action: {showFatorMinEscala.toggle()}) {
                            BotaoRetangular(nome: "Fator mínimo de escala")
                        }
                        .sheet(isPresented: $showFatorMinEscala) { Texto.FatorMinEscala() }
                        
                        Button(action: {showTruncamento.toggle()}) {
                            BotaoRetangular(nome: "Truncamento")
                        }
                        .sheet(isPresented: $showTruncamento) { Texto.Truncamento() }
                    }
                    
                    Group {
                        Button(action: {showKerning.toggle()}) {
                            BotaoRetangular(nome: "Kerning")
                        }
                        .sheet(isPresented: $showKerning) { Texto.Kerning() }
                        
                        Button(action: {showTracking.toggle()}) {
                            BotaoRetangular(nome: "Tracking")
                        }
                        .sheet(isPresented: $showTracking) { Texto.Tracking() }
                        
                        Button(action: {showUnderline.toggle()}) {
                            BotaoRetangular(nome: "Sublinhado")
                        }
                        .sheet(isPresented: $showUnderline) { Texto.Underline() }
                        
                        Button(action: {showTachado.toggle()}) {
                            BotaoRetangular(nome: "Tachado")
                        }
                        .sheet(isPresented: $showTachado) { Texto.Tachado() }
                        
                        Button(action: {showFontSystem.toggle()}) {
                            BotaoRetangular(nome: "Fontes do sistema")
                        }
                        .sheet(isPresented: $showFontSystem) { Texto.FontSystem() }
                        
                        Button(action: {showTextCase.toggle()}) {
                            BotaoRetangular(nome: "Capitalização")
                        }
                        .sheet(isPresented: $showTextCase) { Texto.TextCase() }
                        
                        Button(action: {showTightening.toggle()}) {
                            BotaoRetangular(nome: "Compressão")
                        }
                        .sheet(isPresented: $showTightening) { Texto.Tightening() }
                        
                        Button(action: {showDeslocamentoVertical.toggle()}) {
                            BotaoRetangular(nome: "Deslocamento vertical")
                        }
                        .sheet(isPresented: $showDeslocamentoVertical) { Texto.DeslocamentoVertical() }
                        
                        Button(action: {showGiroHorizontal.toggle()}) {
                            BotaoRetangular(nome: "Giro horizontal")
                        }
                        .sheet(isPresented: $showGiroHorizontal) { Texto.GiroHorizontal() }
                        
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
