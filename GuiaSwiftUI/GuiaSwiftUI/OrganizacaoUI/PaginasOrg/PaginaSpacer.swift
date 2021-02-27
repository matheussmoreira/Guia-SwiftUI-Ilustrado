//
//  PaginaSpacer.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaSpacer: View {
    var corPagina: Color
    @State private var showAbaixo = false
    @State private var showEntre = false
    @State private var showAcima = false
    @State private var showAntes = false
    @State private var showDepois = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Spacer", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: { showAbaixo.toggle() }) {
                        BotaoRetangular(nome: "Abaixo do texto")
                    }
                    .sheet(isPresented: $showAbaixo) { Espaco.SpacerAbaixo() }
                    
                    Button(action: { showEntre.toggle() }) {
                        BotaoRetangular(nome: "Entre textos")
                    }
                    .sheet(isPresented: $showEntre) { Espaco.SpacerNoMeio() }
                    
                    Button(action: { showAcima.toggle() }) {
                        BotaoRetangular(nome: "Acima do texto")
                    }
                    .sheet(isPresented: $showAcima) { Espaco.SpacerAcima() }
                    
                    Button(action: { showAntes.toggle() }) {
                        BotaoRetangular(nome: "Antes do texto")
                    }
                    .sheet(isPresented: $showAntes) { Espaco.SpacerHorizontal() }
                    
                    Button(action: { showDepois.toggle() }) {
                        BotaoRetangular(nome: "Depois do texto")
                    }
                    .sheet(isPresented: $showDepois) { Espaco.SpacerHorizontal2() }
                    
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct LinhaSpacer_Previews: PreviewProvider {
    static var previews: some View {
        PaginaSpacer(corPagina: .orange)
    }
}
