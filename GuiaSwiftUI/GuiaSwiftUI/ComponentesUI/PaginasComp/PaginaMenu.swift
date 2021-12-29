//
//  PaginaMenu.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 20/12/21.
//

import SwiftUI

struct PaginaMenu: View {
    let corPagina: Color
    @State private var showExemploSimples = false
    @State private var showExemploLabel = false
    @State private var showExemploAcaoPrimaria = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Menu", corBarra: corPagina)
                Spacer()
            }
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: {showExemploSimples.toggle()}) {
                        BotaoRetangular(nome: "Exemplo simples")
                    }
                    .sheet(isPresented: $showExemploSimples) {
                        MyMenu.ExemploSimples()
                    }
                    
                    Button(action: {showExemploLabel.toggle()}) {
                        BotaoRetangular(nome: "Exemplo label")
                    }
                    .sheet(isPresented: $showExemploLabel) {
                        MyMenu.ExemploLabel()
                    }
                    
                    Button(action: {showExemploAcaoPrimaria.toggle()}) {
                        BotaoRetangular(nome: "Exemplo ação primária")
                    }
                    .sheet(isPresented: $showExemploAcaoPrimaria) {
                        MyMenu.ExemploAcaoPrimaria()
                    }
                    
                    Espacinho()
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaMennu_Previews: PreviewProvider {
    static var previews: some View {
        PaginaMenu(corPagina: .blue)
    }
}
