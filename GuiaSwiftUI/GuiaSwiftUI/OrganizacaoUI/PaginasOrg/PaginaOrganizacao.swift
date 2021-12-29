//
//  PaginaOrganizacao.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaOrganizacao : View {
    @State private var showDivider = false
    var corPagina: Color
    var columns: [GridItem] =
             Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Organização\nde conteúdo", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical) {
                LazyVGrid(columns: columns){
                    NavigationLink(destination: PaginaStacks(corPagina: corPagina)) {
                        BotaoQuadrado(nome: "Stacks", cor: nil)
                    }
                    
                    NavigationLink(destination: PaginaLazyGrids(corPagina: corPagina)) {
                        BotaoQuadrado(nome: "Lazy grids", cor: nil)
                    }
                    
                    NavigationLink(destination: PaginaSpacer(corPagina: corPagina)) {
                        BotaoQuadrado(nome: "Spacer", cor: nil)
                    }
                    
                    Button(action: { showDivider.toggle() }) {
                        BotaoQuadrado(nome: "Divider", cor: nil)
                    }
                    .sheet(isPresented: $showDivider) { Divisor.ExemploUnico() }
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaOrganizacao_Previews: PreviewProvider {
    static var previews: some View {
        PaginaOrganizacao(corPagina: .orange)
    }
}
