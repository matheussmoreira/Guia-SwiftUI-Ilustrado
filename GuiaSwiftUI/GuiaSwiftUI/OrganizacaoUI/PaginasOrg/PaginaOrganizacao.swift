//
//  PaginaOrganizacao.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaOrganizacao : View {
    var corPagina: Color
    @State private var showDivider = false
    
    var body: some View {
        VStack {
            TituloEmBarra(titulo: "Organização\nde conteúdo", corBarra: corPagina)
            
            Spacer()
            
            NavigationLink(destination: PaginaStacks(corPagina: corPagina)) {
                BotaoSimples(nome: "Stacks")
            }
            NavigationLink(destination: PaginaSpacer(corPagina: corPagina)) {
                BotaoSimples(nome: "Spacer")
            }
            BotaoSimples(nome: "Divider")
                .onTapGesture {
                    showDivider.toggle()
                }
                .sheet(isPresented: $showDivider) {
                    Divisor.ExemploUnico()
                }
            
            Spacer()
        }
    }
}
