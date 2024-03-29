//
//  MyTextField.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 13/09/21.
//

import SwiftUI

struct MyTextField_Previews: PreviewProvider {
    static var previews: some View {
        MyTextField.Estilos()
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
    
    struct EdicaoConfirmacao: View {
        @State private var texto = ""
        @State private var digitando = false
        
        var body: some View {
            VStack {
                HStack {
                    Text(digitando ? "Você está digitando!" : "Esperando digitar...")
                        .font(.headline)
                    Spacer()
                }
                TextField("Digite aqui", text: $texto) { isEditing in
                    digitando = isEditing
                } onCommit: {
                    print("Você pressionou return!")
                }
            }.padding(.horizontal)
        }
    }
    
    struct Autocapitalizacao: View {
        @State private var texto1 = ""
        @State private var texto2 = ""
        @State private var texto3 = ""
        @State private var texto4 = ""
        
        var body: some View {
            VStack {
                HStack {
                    Text("Digite abaixo:")
                        .font(.headline)
                    Spacer()
                }
                TextField(".allCharacters", text: $texto1)
                    .autocapitalization(.allCharacters)
                TextField(".sentences", text: $texto2)
                    .autocapitalization(.sentences)
                TextField(".words", text: $texto3)
                    .autocapitalization(.words)
                TextField(".none", text: $texto4)
                    .autocapitalization(.none)
                
            }.padding(.horizontal)
        }
    }
    
    struct Autocorrecao: View {
        @State private var texto1 = ""
        @State private var texto2 = ""
        
        var body: some View {
            VStack {
                HStack {
                    Text("Digite abaixo:")
                        .font(.headline)
                    Spacer()
                }
                TextField("Digite aqui", text: $texto1)
                    .disableAutocorrection(true)
                TextField("Digite aqui", text: $texto2)
                    .disableAutocorrection(false)
            }.padding(.horizontal)
        }
    }
    
    struct Estilos: View {
        @State private var texto1 = ""
        @State private var texto2 = ""
        @State private var texto3 = ""
        @State private var texto4 = ""
        
        var body: some View {
            VStack {
                HStack {
                    Text("Estilos")
                        .font(.headline)
                    Spacer()
                }
                TextField(".automatic", text: $texto1)
                    .textFieldStyle(.automatic)
                TextField(".plain", text: $texto2)
                    .textFieldStyle(.plain)
                TextField(".roundedBorder", text: $texto3)
                    .textFieldStyle(.roundedBorder)
//                TextField(".squareBorder", text: $texto4)
//                    .textFieldStyle(.squareBorder)
                
            }.padding(.horizontal)
        }
    }
}


