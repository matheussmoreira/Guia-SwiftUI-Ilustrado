//
//  EspacoAlinhamento.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 28/01/21.
//

import SwiftUI

struct EspacoAlinhamento_Previews : PreviewProvider {
    static var previews: some View {
        //Espacamento.SpacerAbaixo()
        //Espacamento.SpacerAcima()
        //Espacamento.SpacerNoMeio()
        //Espacamento.Divisor()
        Espacamento.Padding()
        Espacamento.PaddingNumerico()
    }
}

struct Espacamento {
    
    struct SpacerAbaixo : View {
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
    
    struct SpacerAcima : View {
        var body: some View {
            VStack {
                Spacer()
                Text("Spacer inserido\nacima do texto")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
    }
    
    struct SpacerNoMeio : View {
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
    
    struct PaddingNumerico : View {
        var body: some View {
            VStack {
                Text(".leading, 15")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.leading, 15)
                    .background(Color.black)
                
                Text(".leading, 70")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.leading, 70)
                    .background(Color.black)
                    .offset(y: 15)
            }
        }
    }
}
