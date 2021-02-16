//
//  Botoes.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 29/01/21.
//

import SwiftUI

struct Botao_Previews : PreviewProvider {
    static var previews: some View {
        Botao.ExemploInicial() 
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
}
