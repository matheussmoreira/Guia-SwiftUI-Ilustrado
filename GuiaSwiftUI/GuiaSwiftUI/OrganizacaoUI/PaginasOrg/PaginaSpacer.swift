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
        VStack {
            TituloEmBarra(titulo: "Spacer", corBarra: corPagina)
            Spacer()
            
            BotaoSimples(nome: "Abaixo do texto")
                .onTapGesture { showAbaixo.toggle() }
                .sheet(isPresented: $showAbaixo) {
                    Espaco.SpacerAbaixo()
                }
            
            BotaoSimples(nome: "Entre textos")
                .onTapGesture { showEntre.toggle() }
                .sheet(isPresented: $showEntre) {
                    Espaco.SpacerNoMeio()
                }
            
            BotaoSimples(nome: "Acima do texto")
                .onTapGesture { showAcima.toggle() }
                .sheet(isPresented: $showAcima) {
                    Espaco.SpacerAcima()
                }
            
            BotaoSimples(nome: "Antes do texto")
                .onTapGesture { showAntes.toggle() }
                .sheet(isPresented: $showAntes) {
                    Espaco.SpacerHorizontal()
                }
            
            BotaoSimples(nome: "Depois do texto")
                .onTapGesture { showDepois.toggle() }
                .sheet(isPresented: $showDepois) {
                    Espaco.SpacerHorizontal2()
                }
            
            Spacer()
        }
    }
}

struct PaginaSpacer_Previews: PreviewProvider {
    static var previews: some View {
        PaginaSpacer(corPagina: .orange)
    }
}
