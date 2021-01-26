//
//  Texto.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 26/01/21.
//

import SwiftUI

struct Texto_Previews: PreviewProvider {
    static var previews: some View {
        Texto.Unico()
        //Texto.Tamanhos()
        //Texto.Pesos()
        //Texto.Cores()
        //Texto.CoresPrimary().preferredColorScheme(.light)
        //Texto.CoresPrimary().preferredColorScheme(.dark)
    }
}

struct Texto {
    struct Unico : View {
        var body: some View {
            Text("Se você está lendo isso, parabéns!!")
        }
    }

    struct Tamanhos : View {
        var body: some View {
            VStack {
                Text("Large Title")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                Group {
                    Text("Title")
                        .font(.title)
                    Text("Title 2")
                        .font(.title2)
                    Text("Title 3\n")
                        .font(.title3)
                }
                    
                Group {
                    Text("Headline")
                        .font(.headline)
                    
                    Text("Subheadline\n")
                        .font(.subheadline)
                }
                
                Text("Body")
                    .font(.body)
                    .padding(.bottom)
                
                Text("Callout")
                    .font(.callout)
                    .padding(.bottom)
                
                Group {
                    Text("Caption")
                        .font(.caption)
                    Text("Caption 2\n")
                        .font(.caption2)
                }
                
                Text("Footnote")
                    .font(.footnote)
            }
        }
    }

    struct Pesos : View {
        var body : some View {
            VStack {
                Text("Black\n")
                    .fontWeight(.black)
                Text("Heavy\n")
                    .fontWeight(.heavy)
                Text("Bold\n")
                    .fontWeight(.bold)
                Text("Semibold\n")
                    .fontWeight(.semibold)
                Text("Medium\n")
                    .fontWeight(.medium)
                Text("Regular\n")
                    .fontWeight(.regular)
                Text("Light\n")
                    .fontWeight(.light)
                Text("Thin\n")
                    .fontWeight(.thin)
                Text("Ultra light")
                    .fontWeight(.ultraLight)
            }.font(.title)
        }
    }
    
    struct Cores : View {
        var body : some View {
            VStack {
                Text("Amarelo\n")
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                Text("Azul\n")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                Text("  Branco  ")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .background(Color.black)
                Text("\nCinza\n")
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                Text("Laranja\n")
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
                Text("Preto\n")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                Text("Rosa\n")
                    .foregroundColor(.pink)
                    .fontWeight(.bold)
                Text("Roxo\n")
                    .foregroundColor(.purple)
                    .fontWeight(.bold)
                Text("Verde\n")
                    .foregroundColor(.green)
                    .fontWeight(.bold)
                Text("Vermelho\n")
                    .foregroundColor(.red)
                    .fontWeight(.bold)
                
            }.font(.title)
        }
    }
    
    struct CoresPrimary : View {
        var body : some View {
            VStack {
                Text("Preto no branco\nBranco no preto")
                    .foregroundColor(.primary)
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
    }
}


