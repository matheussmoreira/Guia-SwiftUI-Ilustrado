//
//  Texto.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 26/01/21.
//

import SwiftUI

struct Texto_Previews: PreviewProvider {
    static var previews: some View {
        //Texto.Unico()
        //Texto.Tamanhos()
        //Texto.Pesos()
        //Texto.Cores()
        //Texto.CoresPrimary().preferredColorScheme(.light)
        //Texto.CoresPrimary().preferredColorScheme(.dark)
        //Texto.Alinhamento()
        //Texto.EspacoLinhas()
        Texto.LimiteLinhas()
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
    
    struct Alinhamento : View {
        var body : some View {
            VStack {
                /// LEADING
                Text("Leading")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("O jardim não era especialmente exuberante nem especialmente bem cuidado. Mas era grande, e pertencia a ela. \n\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                /// CENTER
                Text("Center")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Uma macieira retorcida pela ação do vento e alguns arbustos que quase nunca davam bagas conseguiam sobreviver às fortes tempestades de inverno.\n\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                /// TRAILING
                Text("Trailing")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("O imenso jardim era rodeado por bétulas, que protegiam um pouco seu interior contra os ventos fortes.")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
            }
        }
    }
    
    struct EspacoLinhas : View {
        var body: some View {
            VStack {
                Text("Espaço de valor 5\n")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Hoje, os cientistas descrevem o universo a partir de duas teorias parciais básicas: a teoria da relatividade geral e a mecânica quântica. Elas são as grandes realizações intelectuais da primeira metade do século XX.\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                
                Text("Espaço de valor 20\n")
                    .foregroundColor(.green)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Hoje, os cientistas descrevem o universo a partir de duas teorias parciais básicas: a teoria da relatividade geral e a mecânica quântica. Elas são as grandes realizações intelectuais da primeira metade do século XX.")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineSpacing(20)
            }
        }
    }
    
    struct LimiteLinhas : View {
        var body: some View {
            VStack {
                Text("Limite de 3 linhas\n")
                    .foregroundColor(.orange)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Os computadores da Apple são melhores do que os computadores da Microsoft? Um é melhor do que o outro quando olhados empiricamente, baseado em dados e análises, testes e comparações objetivas?\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                
                Text("\nSem limite de linhas\n")
                    .foregroundColor(.green)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Os computadores da Apple são melhores do que os computadores da Microsoft? Um é melhor do que o outro quando olhados empiricamente, baseado em dados e análises, testes e comparações objetivas?\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
            }
        }
    }
}

