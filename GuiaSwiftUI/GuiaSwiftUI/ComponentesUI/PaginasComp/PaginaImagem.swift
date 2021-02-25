//
//  PaginaImagem.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaImagem: View {
    @State private var showImagem = false
    @State private var showResizable = false
    @State private var showFit = false
    @State private var showFill = false
    @State private var showIcones = false
    
    var body: some View {
        VStack {
            BotaoSimples(nome: "Imagem Normal")
                .onTapGesture { showImagem.toggle() }
                .sheet(isPresented: $showImagem) { Imagens.Normal() }
            
            BotaoSimples(nome: "Resizable")
                .onTapGesture { showResizable.toggle() }
                .sheet(isPresented: $showResizable) {
                    Imagens.Resizable()
                }
            
            BotaoSimples(nome: "Fit")
                .onTapGesture { showFit.toggle() }
                .sheet(isPresented: $showFit) { Imagens.Fit() }
            
            BotaoSimples(nome: "Fill")
                .onTapGesture { showFill.toggle() }
                .sheet(isPresented: $showFill) { Imagens.Fill() }
            
            BotaoSimples(nome: "Icones")
                .onTapGesture { showIcones.toggle() }
                .sheet(isPresented: $showIcones) { Imagens.Icones() }
            
        }.navigationBarTitle("Image")
    }
}

struct PaginaImagem_Previews: PreviewProvider {
    static var previews: some View {
        PaginaImagem()
    }
}
