//
//  MySecureField.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 26/09/21.
//

import SwiftUI

struct MySecureField_Previews: PreviewProvider {
    static var previews: some View {
        MySecureField.ExemploUnico()
    }
}

struct MySecureField {
    struct ExemploUnico: View {
        @State private var senha = ""
        
        var body: some View {
            VStack {
                HStack {
                    Text("Digite sua senha abaixo:")
                        .font(.headline)
                    Spacer()
                }
                SecureField("Digite aqui", text: $senha) {
                    print("Você apertou no return")
                }
            }.padding(.horizontal)
        }
    }
}

