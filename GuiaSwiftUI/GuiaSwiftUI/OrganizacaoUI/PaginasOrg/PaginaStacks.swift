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
    @State private var showAlignment = false
    @State private var showSpacing = false
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
                    
                    Button(action: { showAlignment.toggle()}) {
                        BotaoRetangular(nome: "Alinhamentos")
                    }
                    .sheet(isPresented: $showAlignment) { Stacks.Alinhamentos() }
                    
                    Button(action: { showSpacing.toggle() }) {
                        BotaoRetangular(nome: "Espaçamentos")
                    }
                    .sheet(isPresented: $showSpacing) { Stacks.Espacamentos() }
                    
                    Button(action: { showAninhadas.toggle() }) {
                        BotaoRetangular(nome: "Stacks aninhadas")
                    }
                    .sheet(isPresented: $showAninhadas) { Stacks.Aninhadas() }
                    
                    Button(action: { showLazy.toggle() }) {
                        BotaoRetangular(nome: "Lazy Stacks")
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
