//
//  Modifiers.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 16/02/21.
//

import SwiftUI

struct Modifiers_Previews : PreviewProvider {
    static var previews: some View {
        Preenchimento.IgnoresSafeArea()
    }
}

struct Preenchimento {
    struct PaddingPosicoes : View {
        var body: some View {
            VStack {
                VStack {
                    Text("Sem padding")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle().foregroundColor(.green).frame(width: 40, height: 40)
                        .border(Color.red)
                }
                
                VStack {
                    Text(".padding(.top)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    
                    Circle().foregroundColor(.green).frame(width: 40, height: 40)
                        .padding(.top)
                        .border(Color.red)
                }
                
                VStack {
                    Text(".padding(.leading)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle().foregroundColor(.green).frame(width: 40, height: 40)
                        .padding(.leading)
                        .border(Color.red)
                }
                
                VStack {
                    Text(".padding(.bottom)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 40, height: 40)
                        .padding(.bottom)
                        .border(Color.red)
                }
                
                VStack {
                    Text(".padding(.trailing)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle().foregroundColor(.green).frame(width: 50, height: 50)
                        .padding(.trailing)
                        .border(Color.red)
                    
                }
                
                VStack {
                    Text(".padding()")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle().foregroundColor(.green).frame(width: 50, height: 50)
                        .padding()
                        .border(Color.red)
                }
                
            }
        }
    }
    
    struct PaddingMultiplasPosicoes : View {
        var body: some View {
            Circle()
                .foregroundColor(.green)
                .frame(width: 40, height: 40)
                .padding([.top, .bottom, .leading])
                .border(Color.red)
        }
    }
    
    struct PaddingValorNumerico : View {
        @Environment(\.colorScheme) var colorScheme
        var body: some View {
            VStack {
                Text(".leading, 15")
                    .font(.title)
                    .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                    .padding(.leading, 15)
                    .background(colorScheme == .dark ? Color.white : Color.black)
                
                Text(".leading, 70")
                    .font(.title)
                    .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                    .padding(.leading, 70)
                    .background(colorScheme == .dark ? Color.white : Color.black)
                    .offset(y: 15)
            }
        }
    }
    
    struct IgnoresSafeArea : View {
        var body: some View {
            ZStack {
                Color.orange
                    .ignoresSafeArea()
                Text("Ignorando a safe area")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
            }
        }
    }
}
