//
//  MyStacks.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 14/02/23.
//

import SwiftUI

struct MyStacks_Previews: PreviewProvider {
    static var previews: some View {
        MyStacks.AlinhamentoHStack()
    }
}

struct MyStacks {
    struct Tipos: View {
        var body: some View {
            VStack {
                Text("VStack")
                VStack {
                    MyStacks.QuadradoAzul()
                    MyStacks.CirculoVermelhoGrande()
                }.padding()
                
                Text("HStack")
                HStack {
                    MyStacks.QuadradoAzul()
                    MyStacks.CirculoVermelhoGrande()
                }.padding()
                
                // ZStack
                
                Text("ZStack")
                ZStack {
                    MyStacks.QuadradoAzul()
                    MyStacks.CirculoVermelhoGrande()
                }.padding()
            }
            .font(.title)
            .fontWeight(.bold)
        }
    } // Tipos de stacks
    
    struct Aninhadas: View {
        var body: some View {
            VStack {
                HStack {
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    // Quadrado cinza
                    VStack {
                        MyStacks.QuadradoVerde()
                        MyStacks.QuadradoVerde()
                        // Quadrados verdes
                    }
                }
                
                HStack {
                    MyStacks.CirculoAzulPequeno()
                    MyStacks.CirculoAzulPequeno()
                    MyStacks.CirculoAzulPequeno()
                    MyStacks.CirculoAzulPequeno()
                    MyStacks.CirculoAzulPequeno()
                    // Círculos azuis
                }
                
                Capsule()
                    .frame(width: 200, height: 40)
                    .foregroundColor(.orange)
                // Cápsula laranja
            }
        }
    } // Stacks aninhadas
    
    struct AlinhamentoVStack: View {
        var body: some View {
            VStack {
                Text("Alinhamento em VStack")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack {
                    // Leading
                    VStack(alignment: .leading) {
                        MyStacks.RetanguloAzul(texto: ".leading")
                        MyStacks.CirculoVermelhoPequeno()
                        MyStacks.CirculoVermelhoPequeno()
                    }
                    .border(Color.blue)
                    
                    // Center
                    VStack(alignment: .center) {
                        MyStacks.RetanguloAzul(texto: ".center")
                        MyStacks.CirculoVermelhoPequeno()
                        MyStacks.CirculoVermelhoPequeno()
                    }
                    .border(Color.blue)
                    
                    // Trailing
                    VStack(alignment: .trailing) {
                        MyStacks.RetanguloAzul(texto: ".trailing")
                        MyStacks.CirculoVermelhoPequeno()
                        MyStacks.CirculoVermelhoPequeno()
                    }
                    .border(Color.blue)
                }
            }
        }
    } // Alinhamento VStack
    
    struct AlinhamentoHStack: View {
        var body: some View {
            VStack {
                Text("Alinhamento\nem HStack")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Top
                HStack(alignment: .top) {
                    MyStacks.RetanguloAzul(texto: ".top")
                    MyStacks.CirculoVermelhoPequeno()
                    MyStacks.CirculoVermelhoPequeno()
                }
                .border(Color.blue)
                
                // Center
                HStack(alignment: .center) {
                    MyStacks.RetanguloAzul(texto: ".center")
                    MyStacks.CirculoVermelhoPequeno()
                    MyStacks.CirculoVermelhoPequeno()
                }
                .border(Color.blue)
                
                // Bottom
                HStack(alignment: .bottom) {
                    MyStacks.RetanguloAzul(texto: ".bottom")
                    MyStacks.CirculoVermelhoPequeno()
                    MyStacks.CirculoVermelhoPequeno()
                }
                .border(Color.blue)
                
                // First text baseline
                HStack(alignment: .firstTextBaseline) {
                    MyStacks.RetanguloAzul(texto: ".firstText\nBaseline")
                    MyStacks.CirculoVermelhoPequeno()
                    MyStacks.CirculoVermelhoPequeno()
                }
                .border(Color.blue)
                
                // Last text baseline
                HStack(alignment: .lastTextBaseline) {
                    MyStacks.RetanguloAzul(texto: ".lastText\nBaseline")
                    MyStacks.CirculoVermelhoPequeno()
                    MyStacks.CirculoVermelhoPequeno()
                }
                .border(Color.blue)
            }
        }
    } // Alinhamento HStack
    
    struct EspacamentoVStack: View {
        var body: some View {
            VStack {
                Text("Espaçamento em VStack")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(alignment: .top) {
                    VStack(spacing: 40) {
                        MyStacks.RetanguloVerde(texto: "Valor 40")
                        MyStacks.CirculoVermelhoMedio()
                        MyStacks.CirculoVermelhoMedio()
                        MyStacks.CirculoVermelhoMedio()
                    }
                    .border(Color.green)
                    
                    VStack(spacing: 80) {
                        MyStacks.RetanguloVerde(texto: "Valor 80")
                        MyStacks.CirculoVermelhoMedio()
                        MyStacks.CirculoVermelhoMedio()
                        MyStacks.CirculoVermelhoMedio()
                    }.border(Color.green)
                }
            }
        }
    } // Espacamento VStack
    
    struct EspacamentoHStack: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Espaçamento em HStack")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(spacing: 10) {
                    MyStacks.RetanguloVerde(texto: "Valor 10")
                    MyStacks.CirculoVermelhoMedio()
                    MyStacks.CirculoVermelhoMedio()
                }
                .border(Color.green)
                
                HStack(spacing: 50) {
                    MyStacks.RetanguloVerde(texto: "Valor 50")
                    MyStacks.CirculoVermelhoMedio()
                    MyStacks.CirculoVermelhoMedio()
                }
                .border(Color.green)
                
            }
        }
    } // Espacamento HStack
    
    struct LazyStacks: View {
        var body: some View {
            VStack {
                Text("O código em questão foi escrito para exibir 1000 quadrados.\n\nComo não mais que 4 aparecem na tela, somente estes são renderizados, como se o restante não existisse.")
                    .padding(.horizontal)
                    
                ScrollView(.horizontal, showsIndicators: true) {
                    LazyHStack {
                        ForEach(1..<1001) { _ in
                            Rectangle()
                                .foregroundColor(.purple)
                                .frame(width: 100, height: 100)
                                .padding(.horizontal)
                        }
                    }.frame(height: 200)
                }
                                
                Text("Quando temos um número de componentes maior que o que conseguimos exibir em tela de uma só vez, é bem provável que eles estejam contidos numa barra de rolagem.")
                    .padding(.horizontal)
                    
            }.font(.title3)
        }
    } // LazyStacks
}

// MARK: - Objetos

extension MyStacks {
    struct QuadradoAzul: View {
        var body: some View {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        }
    } // Quadrado azul
    
    struct QuadradoVerde: View {
        var body: some View {
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.green)
        }
    } // Quadrado verde
    
    struct CirculoVermelhoGrande: View {
        var body: some View {
            Circle()
                .frame(width: 80, height: 80)
                .foregroundColor(.red)
        }
    } // Circulo vermelho grande
    
    struct CirculoVermelhoMedio: View {
        var body: some View {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
        }
    } // Circulo vermelho medio
    
    struct CirculoVermelhoPequeno: View {
        var body: some View {
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(.red)
        }
    } // Circulo vermelho pequeno
    
    struct CirculoAzulPequeno: View {
        var body: some View {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
        }
    } // Circulo azul pequeno
    
    struct RetanguloAzul: View {
        var texto: String
        var body: some View {
            ZStack {
                Rectangle()
                    .foregroundColor(.blue)
                Text(texto)
                    .foregroundColor(.white)
                    .bold()
            }.frame(width: 100, height: 60)
        }
    } // Retangulo azul com texto
    
    struct RetanguloVerde: View {
        var texto: String
        var body: some View {
            ZStack {
                Rectangle()
                    .foregroundColor(.green)
                Text(texto)
                    .foregroundColor(.white)
                    .bold()
            }.frame(width: 120, height: 60)
        }
    } // Retangulo verde com texto
}
