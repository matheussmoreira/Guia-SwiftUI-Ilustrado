//
//  PaginaStacks.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaStacks: View {
    var corPagina: Color
    @State private var showTipos = false
    @State private var showAlignment = false
    @State private var showSpacing = false
    @State private var showAninhadas = false
    @State private var showLazy = false
    
    var body: some View {
        VStack {
            TituloEmBarra(titulo: "Stacks", corBarra: corPagina)
            Spacer()
            
            BotaoSimples(nome: "Tipos de Stacks")
                .onTapGesture { showTipos.toggle() }
                .sheet(isPresented: $showTipos) { Stacks.Tipos() }
            
            BotaoSimples(nome: "Alinhamentos")
                .onTapGesture {
                    showAlignment.toggle()
                }
                .sheet(isPresented: $showAlignment) {
                    Stacks.Alinhamentos()
                }
            
            BotaoSimples(nome: "Espaçamentos")
                .onTapGesture { showSpacing.toggle() }
                .sheet(isPresented: $showSpacing) { Stacks.Espacamentos() }
            
            BotaoSimples(nome: "Stacks Aninhadas")
                .onTapGesture { showAninhadas.toggle() }
                .sheet(isPresented: $showAninhadas) { Stacks.Aninhadas() }
            
            BotaoSimples(nome: "LazyStacks")
                .onTapGesture {
                    showLazy.toggle()
                }
                .sheet(isPresented: $showLazy) {
                    Stacks.LazyStacks()
                }
            
            Spacer()
        }
    }
}

struct PaginaStacks_Previews: PreviewProvider {
    static var previews: some View {
        PaginaStacks(corPagina: .orange)
    }
}
