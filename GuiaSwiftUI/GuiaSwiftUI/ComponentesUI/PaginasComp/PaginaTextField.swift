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
    @State private var showEdicaoConfirmacao = false
    @State private var showAutocapitalizacao = false
    @State private var showAutocorrecao = false
    @State private var showEstilos = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "TextField", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: {showExemplo1.toggle()}) {
                        BotaoRetangular(nome: "Como inserir")
                    }
                    .sheet(isPresented: $showExemplo1) { MyTextField.Exemplo1() }
                    
                    Button(action: {showEdicaoConfirmacao.toggle()}) {
                        BotaoRetangular(nome: "Edição e confirmação")
                    }
                    .sheet(isPresented: $showEdicaoConfirmacao) { MyTextField.EdicaoConfirmacao() }
                    
                    Button(action: {showAutocapitalizacao.toggle()}) {
                        BotaoRetangular(nome: "Autocapitalização")
                    }
                    .sheet(isPresented: $showAutocapitalizacao) { MyTextField.Autocapitalizacao() }
                    
                    Button(action: {showAutocorrecao.toggle()}) {
                        BotaoRetangular(nome: "Autocorreção")
                    }
                    .sheet(isPresented: $showAutocorrecao) { MyTextField.Autocorrecao() }
                    
                    Button(action: {showEstilos.toggle()}) {
                        BotaoRetangular(nome: "Estilos")
                    }
                    .sheet(isPresented: $showEstilos) { MyTextField.Estilos() }

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
