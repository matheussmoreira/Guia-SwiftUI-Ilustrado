//
//  PaginaStacks.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct LinhaStacks : View {
    @State private var showTipos = false
    @State private var showAlignment = false
    @State private var showSpacing = false
    @State private var showAninhadas = false
    @State private var showLazy = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Stacks").font(.title).bold()
                Spacer()
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    BotaoRetangular(nome: "Tipos de Stacks")
                        .onTapGesture { showTipos.toggle() }
                        .sheet(isPresented: $showTipos) { Stacks.Tipos() }
                    
                    BotaoRetangular(nome: "Alinhamentos")
                        .onTapGesture {
                            showAlignment.toggle()
                        }
                        .sheet(isPresented: $showAlignment) {
                            Stacks.Alinhamentos()
                        }
                    
                    BotaoRetangular(nome: "Espaçamentos")
                        .onTapGesture { showSpacing.toggle() }
                        .sheet(isPresented: $showSpacing) { Stacks.Espacamentos() }
                    
                    BotaoRetangular(nome: "Stacks\nAninhadas")
                        .onTapGesture { showAninhadas.toggle() }
                        .sheet(isPresented: $showAninhadas) { Stacks.Aninhadas() }
                    
                    BotaoRetangular(nome: "LazyStacks")
                        .onTapGesture {
                            showLazy.toggle()
                        }
                        .sheet(isPresented: $showLazy) {
                            Stacks.LazyStacks()
                        }
                }.padding(.horizontal)
            }
        }
    }
}

struct LinhaStacks_Previews: PreviewProvider {
    static var previews: some View {
        LinhaStacks()
    }
}
