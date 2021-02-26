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
                        BotaoQuadrado(nome: "Text")
                    }
                    BotaoQuadrado(nome: "Image")
                    BotaoQuadrado(nome: "Button")
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
