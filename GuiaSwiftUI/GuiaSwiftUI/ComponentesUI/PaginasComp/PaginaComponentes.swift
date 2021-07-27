//
//  PaginasComp.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaComponentes : View {
    var corPagina: Color
    var columns: [GridItem] =
             Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Componentes\nde interface", corBarra: corPagina)
                Spacer()
            }

            ScrollView(.vertical) {
                LazyVGrid(columns: columns){
                    NavigationLink(destination: PaginaText(corPagina: corPagina)) {
                        BotaoQuadrado(nome: "Text", cor: nil)
                    }
                    
                    NavigationLink(destination: PaginaImage(corPagina: corPagina)) {
                        BotaoQuadrado(nome: "Image", cor: nil)
                    }
                    
                    NavigationLink(destination: PaginaLabel(corPagina: corPagina)) {
                        BotaoQuadrado(nome: "Label", cor: nil)
                    }
                    
                    NavigationLink(destination: PaginaButton(corPagina: corPagina)) {
                        BotaoQuadrado(nome: "Button", cor: nil)
                    }
                    
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaComponentes_Previews: PreviewProvider {
    static var previews: some View {
        PaginaComponentes(corPagina: .blue)
    }
}
