//
//  EspacoAlinhamento.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 28/01/21.
//

import SwiftUI

struct EspacoAlinhamento_Previews : PreviewProvider {
    static var previews: some View {
        Espacamento.EspacoBaixo()
        Espacamento.EspacoCima()
        Espacamento.EspacoMeio()
        Espacamento.Divisor()
        Espacamento.Padding()
        Espacamento.PaddingNumerico()
    }
}

struct Espacamento {
    
    struct EspacoBaixo : View {
        var body: some View {
            VStack {
                Text("Spacer inserido\nabaixo do texto")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
            }
        }
    }
    
    struct EspacoCima : View {
        var body: some View {
            VStack {
                Spacer()
                Text("Spacer inserido\nacima do texto")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
    }
    
    struct EspacoMeio : View {
        var body: some View {
            VStack {
                Text("Spacer entre")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("dois textos")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
    }
    
    struct Divisor : View {
        var body: some View {
            VStack {
                VStack {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                        .padding()
                    
                    Divider()
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                        .padding()
                }.border(Color.blue).padding()
                
                HStack {
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.orange)
                        .padding()
                    
                    Divider()
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.orange)
                        .padding()
                    
                }.border(Color.orange).padding()
            }
        }
    }
    
    struct Padding : View {
        var body: some View {
            VStack {
                Text("Sem padding")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                HStack {
                    Circle().foregroundColor(.green).frame(width: 50, height: 50)
                        .border(Color.red)
                    
                    Circle().foregroundColor(.green)
                        .frame(width: 50, height: 50)
                }
                
                Text("Com padding na direita")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                HStack {
                    Circle().foregroundColor(.green).frame(width: 50, height: 50)
                        .padding(.trailing)
                        .border(Color.red)
                    
                    Circle().foregroundColor(.green)
                        .frame(width: 50, height: 50)
                }
                
            }
        }
    }
    
    struct PaddingNumerico : View {
        var body: some View {
            VStack {
                Text("Esquerda 20")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading, 20)
                    .background(Color.black)
                
                Text("Esquerda 70")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading, 70)
                    .background(Color.black)
                    .offset(y: 8)
            }
        }
    }
    
}
