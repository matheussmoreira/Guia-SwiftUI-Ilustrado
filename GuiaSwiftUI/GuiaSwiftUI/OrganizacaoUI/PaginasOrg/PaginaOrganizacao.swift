//
//  PaginaOrganizacao.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaOrganizacao : View {
    var corPagina: Color
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Organização\nde conteúdo", corBarra: corPagina)
                Spacer()
            }
            
            VStack {
                Spacer()
                ScrollView(.vertical) {
                    LinhaStacks()
                    LinhaSpacer()
                    LinhaDivider()
                }
            }.offset(y: 52)
        }
    }
}

struct PaginaOrganizacao_Previews: PreviewProvider {
    static var previews: some View {
        PaginaOrganizacao(corPagina: .orange)
    }
}
