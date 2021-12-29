//
//  PaginaStacks.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaStacks : View {
    var corPagina: Color
    @State private var showTipos = false
    @State private var showAlignmentV = false
    @State private var showSpacingV = false
    @State private var showAlignmentH = false
    @State private var showSpacingH = false
    @State private var showAninhadas = false
    @State private var showLazy = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Stacks", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: { showTipos.toggle() }) {
                        BotaoRetangular(nome: "Tipos de Stacks")
                    }
                    .sheet(isPresented: $showTipos) { Stacks.Tipos() }
                    
                    Button(action: { showAlignmentV.toggle()}) {
                        BotaoRetangular(nome: "Alinhamento em VStack")
                    }
                    .sheet(isPresented: $showAlignmentV) { Stacks.AlinhamentoVertical() }
                    
                    Button(action: { showAlignmentH.toggle()}) {
                        BotaoRetangular(nome: "Alinhamento em HStack")
                    }
                    .sheet(isPresented: $showAlignmentH) { Stacks.AlinhamentoHorizontal() }
                    
                    Button(action: { showSpacingV.toggle() }) {
                        BotaoRetangular(nome: "Espaçamento em VStack")
                    }
                    .sheet(isPresented: $showSpacingV) { Stacks.EspacamentoVertical() }
                    
                    Button(action: { showSpacingH.toggle() }) {
                        BotaoRetangular(nome: "Espaçamento em HStack")
                    }
                    .sheet(isPresented: $showSpacingH) { Stacks.EspacamentoHorizontal() }
                    
                    Button(action: { showAninhadas.toggle() }) {
                        BotaoRetangular(nome: "Stacks aninhadas")
                    }
                    .sheet(isPresented: $showAninhadas) { Stacks.Aninhadas() }
                    
                    Button(action: { showLazy.toggle() }) {
                        BotaoRetangular(nome: "LazyStacks")
                    }
                    .sheet(isPresented: $showLazy) { Stacks.LazyStacks() }
                    
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct LinhaStacks_Previews: PreviewProvider {
    static var previews: some View {
        PaginaStacks(corPagina: .orange)
    }
}
