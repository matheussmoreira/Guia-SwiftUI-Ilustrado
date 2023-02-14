//
//  MySpacer.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 13/02/23.
//

import SwiftUI

struct MySpacer_Previews: PreviewProvider {
    static var previews: some View {
        MySpacer.ComprimentoMinimo()
    }
}

struct MySpacer {
    struct Abaixo: View {
        var body: some View {
            VStack {
                Text("Spacer inserido\nabaixo do texto")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
            }
        }
    } // Abaixo
    
    struct Acima: View {
        var body: some View {
            VStack {
                Spacer()
                Text("Spacer inserido\nacima do texto")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
        }
    } // Acima
    
    struct NoMeioVertical: View {
        var body: some View {
            VStack {
                Text("Spacer entre")
                Spacer()
                Text("dois textos")
            }
            .font(.title)
            .fontWeight(.bold)
        }
    } // No meio vertical
    
    struct Antes: View {
        var body: some View {
            HStack {
                Spacer()
                Text("Spacer\nantes")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
            }
            .padding()
        }
    }  // Antes
    
    struct Depois: View {
        var body: some View {
            HStack {
                Text("Spacer\ndepois")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding()
        }
    } // Depois
    
    struct NoMeioHorizontal: View {
        var body: some View {
            VStack {
                HStack {
                    Text("Spacer\nentre")
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("dois\ntextos")
                        .multilineTextAlignment(.trailing)
                }
                .font(.title)
                .fontWeight(.bold)
                .padding()
                
                Spacer()
            }
        }
    } // No meio horizontal
    
    struct ComprimentoMinimo: View {
        var body: some View {
            VStack(spacing: 60) {
                VStack {
                    Text("Comprimento mínimo de 2")
                        .font(.title)
                        .bold()
                    
                    HStack {
                        MySpacer.CirculoRoxo()
                        Spacer(minLength: 2)
                        MySpacer.CirculoRoxo()
                        Spacer(minLength: 2)
                        MySpacer.CirculoRoxo()
                        Spacer(minLength: 2)
                        MySpacer.CirculoRoxo()
                        Spacer(minLength: 2)
                        MySpacer.CirculoRoxo()
                    }
                } // Fileira superior
                
                VStack {
                    Text("Comprimento mínimo de 60")
                        .font(.title)
                        .bold()
                    
                    HStack {
                        MySpacer.CirculoVerde()
                        Spacer(minLength: 60)
                        MySpacer.CirculoVerde()
                        Spacer(minLength: 60)
                        MySpacer.CirculoVerde()
                        Spacer(minLength: 60)
                        MySpacer.CirculoVerde()
                        Spacer(minLength: 60)
                        MySpacer.CirculoVerde()
                    }
                } // Fileira inferior
            }
        }
    } // ComprimentoMinimo
}

// MARK: - Objetos

extension MySpacer {
    struct CirculoRoxo: View {
        var body: some View {
            Circle()
                .frame(width: 40, height: 40)
                .foregroundColor(.purple)
        }
    } // Circulo roxo

    struct CirculoVerde: View {
        var body: some View {
            Circle()
                .frame(width: 40, height: 40)
                .foregroundColor(.green)
        }
    } // Circulo verde
}

