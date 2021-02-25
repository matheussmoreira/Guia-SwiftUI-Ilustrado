//
//  PaginasComp.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaComponentes : View {
    var corPagina: Color
    
    var body: some View {
        VStack {
            TituloEmBarra(titulo: "Componentes\nde interface", corBarra: corPagina)
            
            Spacer()
            
            NavigationLink(destination: PaginaTexto(corPagina: corPagina)){
                BotaoSimples(nome: "Text")
            }
            NavigationLink(destination: PaginaImagem(corPagina: corPagina)){
                BotaoSimples(nome: "Image")
            }
            NavigationLink(destination: PaginaBotoes(corPagina: corPagina)) {
                BotaoSimples(nome: "Button")
            }
            
            Spacer()
        }
    }
}
