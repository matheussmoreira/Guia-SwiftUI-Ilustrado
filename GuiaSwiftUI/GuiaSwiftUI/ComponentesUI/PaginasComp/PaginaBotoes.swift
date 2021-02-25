//
//  PaginaBotoes.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaBotoes: View {
    var corPagina: Color
    @State private var showNormal = false
    @State private var showSheet = false
    @State private var showFullScreen = false
    
    var body: some View {
        VStack {
            TituloEmBarra(titulo: "Button", corBarra: corPagina)
            Spacer()
            
            BotaoSimples(nome: "Botão Normal")
                .onTapGesture { showNormal.toggle() }
                .sheet(isPresented: $showNormal) {
                    Botao.ExemploInicial()
                }
            
            Botao.Sheet()
            Botao.FullScreen()
            
            Spacer()
        }
    }
}

struct PaginaBotoes_Previews: PreviewProvider {
    static var previews: some View {
        PaginaBotoes(corPagina: .blue)
    }
}
