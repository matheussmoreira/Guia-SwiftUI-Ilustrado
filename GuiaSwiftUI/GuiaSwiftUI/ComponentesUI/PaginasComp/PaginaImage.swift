//
//  PaginaImagem.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaImage: View {
    let corPagina: Color
    @State private var showImagem = false
    @State private var showResizable = false
    @State private var showFit = false
    @State private var showFill = false
    @State private var showIcones = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Image", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: {showImagem.toggle()}) {
                        BotaoRetangular(nome: "Imagem Normal")
                    }
                    .sheet(isPresented: $showImagem) { Imagens.Normal()  }

                    Button(action: {showResizable.toggle() }) {
                        BotaoRetangular(nome: "Resizable")
                    }
                    .sheet(isPresented: $showResizable) { Imagens.Resizable() }
                    
                    Button(action: { showFit.toggle() }) {
                        BotaoRetangular(nome: "Fit")
                    }
                    .sheet(isPresented: $showFit) { Imagens.Fit() }
                    
                    Button(action: { showFill.toggle() }) {
                        BotaoRetangular(nome: "Fill")
                    }
                    .sheet(isPresented: $showFill) { Imagens.Fill() }
                    
                    Button(action: { showIcones.toggle() }) {
                        BotaoRetangular(nome: "Icones")
                    }
                    .sheet(isPresented: $showIcones) { Imagens.Icones() }
                    
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaImagem_Previews: PreviewProvider {
    static var previews: some View {
        PaginaImage(corPagina: .blue)
    }
}
