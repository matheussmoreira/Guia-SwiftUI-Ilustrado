//
//  PaginaPadding.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaPadding: View {
    var corPagina: Color
    @State private var showPosicoes = false
    @State private var showValores = false
    
    var body: some View {
        VStack {
            TituloEmBarra(titulo: "Padding", corBarra: corPagina)
            Spacer()
            
            BotaoSimples(nome: "Posições")
                .onTapGesture { showPosicoes.toggle() }
                .sheet(isPresented: $showPosicoes) {
                    Padding.Posicoes()
                }
            
            BotaoSimples(nome: "Valores numéricos")
                .onTapGesture { showValores.toggle() }
                .sheet(isPresented: $showValores) {
                    Padding.ValorNumerico()
                }
            
            Spacer()
        }
    }
}

struct PaginaPadding_Previews: PreviewProvider {
    static var previews: some View {
        PaginaPadding(corPagina: .green)
    }
}
