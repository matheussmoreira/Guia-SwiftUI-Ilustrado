//
//  PaginaTextField.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 13/09/21.
//

import SwiftUI

struct PaginaTextField: View {
    let corPagina: Color
    @State private var showExemplo1 = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Label", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: {showExemplo1.toggle()}) {
                        BotaoRetangular(nome: "Como inserir")
                    }
                    .sheet(isPresented: $showExemplo1) { MyTextField.Exemplo1() }
                }
            }.offset(y: 60)
        }
    }
}

struct PaginaTextField_Previews: PreviewProvider {
    static var previews: some View {
        PaginaTextField(corPagina: .blue)
    }
}
