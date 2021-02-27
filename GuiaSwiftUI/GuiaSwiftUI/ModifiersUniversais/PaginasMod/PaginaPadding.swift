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
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Padding", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: { showPosicoes.toggle() }) {
                        BotaoRetangular(nome: "Posições")
                    }
                    .sheet(isPresented: $showPosicoes) { Padding.Posicoes() }
                    
                    Button(action: { showValores.toggle() }) {
                        BotaoRetangular(nome: "Valores\nnuméricos")
                    }
                    .sheet(isPresented: $showValores) { Padding.ValorNumerico() }
            
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct LinhaPadding_Previews: PreviewProvider {
    static var previews: some View {
        PaginaPadding(corPagina: .green)
    }
}
