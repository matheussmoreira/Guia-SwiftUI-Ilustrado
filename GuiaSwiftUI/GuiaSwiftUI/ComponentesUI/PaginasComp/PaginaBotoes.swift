//
//  PaginaBotoes.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaBotoes: View {
    @State private var showNormal = false
    @State private var showSheet = false
    @State private var showFullScreen = false
    
    var body: some View {
        VStack {
            BotaoSimples(nome: "Botão Normal")
                .onTapGesture { showNormal.toggle() }
                .sheet(isPresented: $showNormal) {
                    Botao.ExemploInicial()
                }
            
            Botao.Sheet()
            Botao.FullScreen()
        }.navigationBarTitle("Button")
    }
}

struct PaginaBotoes_Previews: PreviewProvider {
    static var previews: some View {
        PaginaBotoes()
    }
}
