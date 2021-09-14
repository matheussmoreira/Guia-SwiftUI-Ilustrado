//
//  PaginaLabel.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 27/07/21.
//

import SwiftUI

struct PaginaLabel: View {
    let corPagina: Color
    @State private var showExemplos = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Label", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 10) {
                    Button(action: {showExemplos.toggle()}) {
                        BotaoRetangular(nome: "Exemplos")
                    }
                    .sheet(isPresented: $showExemplos) { MyLabel.Exemplos() }
                    Espacinho()
                }.padding()
            }.offset(y: 60)
            
        }
    }
}

struct PaginaLabel_Previews: PreviewProvider {
    static var previews: some View {
        PaginaLabel(corPagina: .blue)
    }
}
