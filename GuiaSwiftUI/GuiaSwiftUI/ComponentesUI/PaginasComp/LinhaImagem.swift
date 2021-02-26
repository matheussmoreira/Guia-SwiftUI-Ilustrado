//
//  PaginaImagem.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct LinhaImagem: View {
    @State private var showImagem = false
    @State private var showResizable = false
    @State private var showFit = false
    @State private var showFill = false
    @State private var showIcones = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Image").font(.title).bold()
                Spacer()
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    BotaoRetangular(nome: "Imagem Normal")
                        .onTapGesture { showImagem.toggle() }
                        .sheet(isPresented: $showImagem) { Imagens.Normal() }
                    
                    BotaoRetangular(nome: "Resizable")
                        .onTapGesture { showResizable.toggle() }
                        .sheet(isPresented: $showResizable) {
                            Imagens.Resizable()
                        }
                    
                    BotaoRetangular(nome: "Fit")
                        .onTapGesture { showFit.toggle() }
                        .sheet(isPresented: $showFit) { Imagens.Fit() }
                    
                    BotaoRetangular(nome: "Fill")
                        .onTapGesture { showFill.toggle() }
                        .sheet(isPresented: $showFill) { Imagens.Fill() }
                    
                    BotaoRetangular(nome: "Icones")
                        .onTapGesture { showIcones.toggle() }
                        .sheet(isPresented: $showIcones) { Imagens.Icones() }
                }.padding(.horizontal)
            }
        }
    }
}

struct PaginaImagem_Previews: PreviewProvider {
    static var previews: some View {
        LinhaImagem()
    }
}
