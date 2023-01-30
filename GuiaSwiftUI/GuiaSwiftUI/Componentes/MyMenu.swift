//
//  MyMenu.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 20/12/21.
//

import SwiftUI

struct MyMenu_Previews: PreviewProvider {
    static var previews: some View {
        MyMenu.ExemploAcaoPrimaria()
    }
}

struct MyMenu {
    struct ExemploSimples: View {
        var body: some View {
            VStack {
                Text("Exemplo simples").font(.title).padding()
                
                Menu("Editar") {
                    Button("Duplicar", action: {/* Seu codigo aqui */})
                    Button("Renomear", action: {/* Seu codigo aqui */})
                    Button("Deletar", action: {/* Seu codigo aqui */})
                    Menu("Copiar") {
                        Button("Copiar", action: {/* Seu codigo aqui */})
                        Button("Copiar com formatação", action: {/* Seu codigo aqui */})
                        Button("Copiar diretório", action: {/* Seu codigo aqui */})
                    }
                    
                    Text("O que você deseja fazer?")
                }.padding()
                
            }
        }
        
    }
    
    struct ExemploLabel: View {
        var body: some View {
            VStack {
                Text("Exemplo com Label").font(.title).padding()
                
                Menu {
                    Button("Abrir preview", action: {/* Seu código aqui */})
                    Button("Salvar como PDF", action: {/* Seu código aqui */})
                } label: {
                    Label("PDF", systemImage: "doc.fill")
                }.padding()
            }
        }
    }
    
    struct ExemploAcaoPrimaria: View {
        var body: some View {
            // iOS 15 or Later
            VStack {
                Text("Exemplo com Ação Primária").font(.title2).padding()
                Menu {
                    Button(action: {/* Seu código aqui */}) {
                        Label("Adicionar à lista de leitura", systemImage: "eyeglasses")
                    }
                    Button(action: {/* Seu código aqui */}) {
                        Label("Mostrar favoritos", systemImage: "books.vertical")
                    }
                } label: {
                    Label("Favoritar", systemImage: "book")
                } primaryAction: {
                    /* Seu código aqui */
                }.padding()
            }
        }
    }
}


