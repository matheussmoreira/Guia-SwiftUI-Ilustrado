//
//  Botoes.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 29/01/21.
//

import SwiftUI

struct Botao_Previews : PreviewProvider {
    static var previews: some View {
        Botao.Sheet()
    }
}

struct Botao {
    struct ExemploInicial : View {
        var body: some View {
            VStack {
                Button("Apenas um texto",
                       action: { print("Olá") }
                ).padding()
                
                Button(action: { print("Olá") }) {
                    // Corpo do botão
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200.0, height: 40.0)
                            .foregroundColor(.black)
                        
                        Text("Botão retangular")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.padding()
                
                Button(action: { print("Olá") }) {
                    // Corpo do botão
                    Image(systemName: "trash.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }.padding()
            }
        }
    }
    
    struct Sheet : View {
        @State private var mostrarSheet = false // .toggle() = inverte valor
        
        var body: some View {
            /*
             Button(action: { mostrarSheet.toggle() }) {
             // Corpo do botão preto
             ZStack {
             RoundedRectangle(cornerRadius: 10)
             .frame(width: 250.0, height: 40.0)
             .foregroundColor(.black)
             
             Text("Clique para exibir")
             .bold()
             .foregroundColor(.white)
             }
             */
            BotaoSimples(nome: "Sheet")
                .onTapGesture { mostrarSheet.toggle() }
                .sheet(isPresented: $mostrarSheet,
                       onDismiss: {print("Você saiu do sheet!")},
                       content: {
                        VStack {
                            Text("Tela em modo sheet!").font(.title).padding()
                            
                            Button("Voltar",action: { mostrarSheet.toggle() })
                        }
                       })
        }
    }
    
    struct FullScreen : View {
        @State private var fullScreen = false
        
        var body: some View {
            /*
             Button(action: { fullScreen.toggle() }) {
             // Corpo do botão preto
             ZStack {
             RoundedRectangle(cornerRadius: 10)
             .frame(width: 250.0, height: 40.0)
             .foregroundColor(.black)
             
             Text("Clique para exibir")
             .bold()
             .foregroundColor(.white)
             }
             */
            BotaoSimples(nome: "Full screen")
                .onTapGesture { fullScreen.toggle() }
                .fullScreenCover(isPresented: $fullScreen,
                                 onDismiss: { print("Você saiu do full screen!") },
                                 content: {
                                    
                                    VStack {
                                        Text("Tela em modo full screen!").font(.title).padding()
                                        
                                        Button("Voltar", action: { fullScreen.toggle() })
                                    }
                                    
                                 })
            
        }
    }
}
