//
//  PaginaModifiers.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaModifiers : View {
    var corPagina: Color
    var columns: [GridItem] =
             Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Modificadores universais", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical) {
                LazyVGrid(columns: columns){
                    NavigationLink(destination: PaginaPreenchimento(corPagina: corPagina)) {
                        BotaoQuadrado(nome: "Padding", cor: nil)
                    }
                }.padding()
            }.offset(y: 60)
            
        }
    }
}
