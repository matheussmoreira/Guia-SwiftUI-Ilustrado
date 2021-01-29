//
//  Stacks.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 27/01/21.
//

import SwiftUI

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks.Exemplos()
        Stacks.Alinhamentos()
        Stacks.Espacamentos()
        Stacks.Aninhadas()
    }
}


struct Stacks {
    struct Exemplos : View {
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
                
                Spacer()
                
                Text("HStack").font(.title).fontWeight(.bold)
                HStack {
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.blue)
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.red)
                }
                
                Spacer()
                
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
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.blue)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                    }
                    .border(Color.blue)
                    
                    /// EXEMPLO 2
                    VStack(alignment: .center) {
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.blue)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                    }
                    .border(Color.blue)
                    
                    /// EXEMPLO 3
                    VStack(alignment: .trailing) {
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.blue)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 50, height: 50)
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
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.green)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                    }
                    .border(Color.green)
                    
                    /// EXEMPLO 2
                    VStack(spacing: 80) {
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.green)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                        
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.red)
                    }
                    .border(Color.green)
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
                    }.border(Color.black, width: 2)
                    
                }.border(Color.blue, width: 2)
                
                Capsule()
                    .frame(width: 180, height: 100)
                    .foregroundColor(.yellow)
                
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
                }.border(Color.yellow, width: 2)
                
            }.border(Color.red, width: 2)
        }
    }
}
