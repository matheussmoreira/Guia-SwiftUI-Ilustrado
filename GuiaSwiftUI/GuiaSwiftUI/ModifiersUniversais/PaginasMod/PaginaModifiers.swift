//
//  PaginaModifiers.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaModifiers : View {
    var corPagina: Color
    
    var body: some View {
        VStack {
            TituloEmBarra(titulo: "Modificadores universais", corBarra: corPagina)
            
            Spacer()
            
            NavigationLink(destination: PaginaPadding(corPagina: corPagina)) {
                BotaoSimples(nome: "Padding")
            }
            
            Spacer()
        }
    }
}
