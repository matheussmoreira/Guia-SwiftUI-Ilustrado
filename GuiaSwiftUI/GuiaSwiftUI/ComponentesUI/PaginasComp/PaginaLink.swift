//
//  PaginaLink.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 15/10/21.
//

import SwiftUI

struct PaginaLink: View {
    let corPagina: Color
    @State private var showExemploUnico = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Link", corBarra: corPagina)
                Spacer()
            }
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: {showExemploUnico.toggle()}) {
                        BotaoRetangular(nome: "Exemplo único")
                    }
                    .sheet(isPresented: $showExemploUnico) {
                        MyLink()
                    }
                    Espacinho()
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaLink_Previews: PreviewProvider {
    static var previews: some View {
        PaginaLink(corPagina: .blue)
    }
}
