//
//  MyTextField.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 13/09/21.
//

import SwiftUI

struct MyTextField_Previews: PreviewProvider {
    static var previews: some View {
        MyTextField.Exemplo1()
    }
}

struct MyTextField {
    struct Exemplo1: View {
        @State private var texto = ""
        
        var body: some View {
            ZStack {
                Color.yellow.edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Text("Você digitou: \(texto)")
                            .font(.headline)
                        Spacer()
                    }
                    TextField("Digite aqui", text: $texto)
                }.padding(.horizontal)
            }
        }
    }
}


