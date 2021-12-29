//
//  PaginaSecureField.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 26/09/21.
//

import SwiftUI

struct PaginaSecureField: View {
    let corPagina: Color
    @State private var showExemploUnico = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "SecureField", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: {showExemploUnico.toggle()}) {
                        BotaoRetangular(nome: "Exemplo único")
                    }
                    .sheet(isPresented: $showExemploUnico) {
                        MySecureField.ExemploUnico()
                    }
                    Espacinho()
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaSecureField_Previews: PreviewProvider {
    static var previews: some View {
        PaginaSecureField(corPagina: .blue)
    }
}
