//
//  Stacks.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 27/01/21.
//

import SwiftUI

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        //Stacks.Tipos()
        //Stacks.Alinhamentos()
        //Stacks.Espacamentos()
        //Stacks.Aninhadas()
        Stacks.LazyStacks()
    }
}


struct Stacks {
    struct Tipos : View {
        var body: some View {
            VStack {
                Text("VStack").font(.title).fontWeight(.bold)
                VStack {
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.blue)
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.red)
                }.padding()
                
                
                Text("HStack").font(.title).fontWeight(.bold)
                HStack {
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.blue)
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.red)
                }
                
                
                Text("ZStack").font(.title).fontWeight(.bold)
                ZStack {
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.blue)
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.red)
                }.padding()
            }
        }
    }
    
    struct Alinhamentos : View {
        var body : some View {
            VStack {
                Text("Alinhamentos")
                    .font(.title)
                    .fontWeight(.bold)
                
                /// EXEMPLO 1
                HStack {
                    VStack(alignment: .leading) {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 60)
                                .foregroundColor(.blue)
                            Text(".leading")
                                .bold()
                                .foregroundColor(.white)
                        } // retagulo azul com texto
                        
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                    }
                    .border(Color.blue)
                    
                    /// EXEMPLO 2
                    VStack(alignment: .center) {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 60)
                                .foregroundColor(.blue)
                            Text(".center")
                                .bold()
                                .foregroundColor(.white)
                        }
                        
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                    }
                    .border(Color.blue)
                    
                    /// EXEMPLO 3
                    VStack(alignment: .trailing) {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 60)
                                .foregroundColor(.blue)
                            Text(".trailing")
                                .bold()
                                .foregroundColor(.white)
                        }
                        
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                    }
                    .border(Color.blue)
                }
            }
        }
    }
    
    struct Espacamentos : View {
        var body : some View {
            VStack {
                Text("Espaçamentos")
                    .font(.title)
                    .fontWeight(.bold)
                
                /// EXEMPLO 1
                HStack {
                    VStack(spacing: 40) {
                        ZStack {
                            Rectangle()
                                .frame(width: 160, height: 60)
                                .foregroundColor(.green)
                            Text("Valor 40")
                                .bold()
                                .foregroundColor(.white)
                        }
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                            .padding()
                    }
                    .border(Color.green)
                    
                    /// EXEMPLO 2
                    VStack(spacing: 80) {
                        ZStack {
                            Rectangle()
                                .frame(width: 160, height: 60)
                                .foregroundColor(.green)
                            Text("Valor 80")
                                .bold()
                                .foregroundColor(.white)
                        }
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                            .padding()
                    }.border(Color.green)
                }
            }
        }
    }
    
    struct Aninhadas : View {
        var body: some View {
            VStack {
                HStack {
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    VStack {
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.green)
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.green)
                    } // Quadrados verdes
                }
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                } // Circulos azuis
            }
        }
    }
    
    struct LazyStacks : View {
        var body: some View {
            VStack {
                Text("O código ao lado foi escrito para exibir 1000 quadrados. \n\nComo não mais que 4 aparecem na tela, somente estes são carregados pelo sistema, como se o restante não existisse.")
                    .font(.title3)
                    .padding()
                LazyHStack {
                    ForEach(Range(1...1000)) { _ in
                        Rectangle()
                            .foregroundColor(.purple)
                            .frame(width: 100, height: 100)
                            .padding()
                    }
                }.frame(height: 200)
                Text("OBS: quando temos um número de componentes maior que o que conseguimos exibir na tela de uma só vez, é bem provável que eles estejam contidos numa barra de rolagem.")
                    .font(.title3)
                    .padding()
            }
        }
    }

}
