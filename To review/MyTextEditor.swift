//
//  MyTextEditor.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 26/09/21.
//

import SwiftUI

struct MyTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        MyTextEditor.ExemploUnico()
    }
}

struct MyTextEditor {
    struct ExemploUnico: View {
        @State private var texto1 = ""
        @State private var texto2 = ""
        
        var body: some View {
            VStack {
                HStack {
                    Text("Digite abaixo:")
                        .font(.headline)
                    Spacer()
                }
                TextEditor(text: $texto1)
                    .frame(height: 100)
                    .border(.black)
                    .foregroundColor(.blue)
                
                TextEditor(text: $texto2)
                    .frame(height: 200)
                    .border(.black)
                    .font(.title)
            }.padding(.horizontal)
        }
    }
}




