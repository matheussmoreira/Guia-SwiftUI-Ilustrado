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
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Modificadores universais", corBarra: corPagina)
                Spacer()
            }
            
            VStack {
                Spacer()
                ScrollView(.vertical) {
                    LinhaPadding()
                }
            }.offset(y: 52)
            
        }
    }
}
