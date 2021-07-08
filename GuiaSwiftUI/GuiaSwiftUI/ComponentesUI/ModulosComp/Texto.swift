//
//  Texto.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 26/01/21.
//

import SwiftUI

struct Texto_Previews: PreviewProvider {
    static var previews: some View {
        //Texto.LimiteLinhas()
        Texto.Tracking()
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
                Group {
                    Text("Footnote")
                        .font(.footnote)
                }
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
        @Environment(\.colorScheme) var colorScheme
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
                    .background(colorScheme == .dark ? nil : Color.black)
                Text("\nCinza\n")
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                Text("Laranja\n")
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
                Text("  Preto  ")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .background(colorScheme == .dark ? Color.white : nil)
                Text("\nRosa\n")
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
    
    struct AparelhoLightDarkMode : View {
        @Environment(\.colorScheme) var colorScheme
        var body: some View {
            Text(colorScheme == .dark ?
                    "A cor primary fica\nbranca no modo escuro" :
                    "A cor primary fica\npreta no modo claro"
                    )
                .foregroundColor(.primary)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
    
    struct CoresLightDarkMode : View {
        var body : some View {
            Text("Mesmo código,\ncores diferentes")
                .foregroundColor(.primary)
                .font(.title)
                .fontWeight(.bold)
                .padding()
        }
    }
    
    struct CoresPrimarySecondary : View {
        var body : some View {
            VStack {
                Text(".primary")
                    .foregroundColor(.primary)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                
                Text(".secondary")
                    .foregroundColor(.secondary)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
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
                Text("Se você quiser aprender SwiftUI temos duas dicas:\n\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                /// CENTER
                Text("Center")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Dica 1: Dedique pelo menos 30 minutos do seu dia para estudar sobre os elementos de programação do SwiftUI.\n\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                /// TRAILING
                Text("Trailing")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Dica 2: Depois dos estudos de SwiftUI pratique aquilo que você estudou para reforçar o aprendizado.\n\n")
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
                    .padding()
                
                Text("Espaço de valor 20\n")
                    .foregroundColor(.green)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Hoje, os cientistas descrevem o universo a partir de duas teorias parciais básicas: a teoria da relatividade geral e a mecânica quântica. Elas são as grandes realizações intelectuais da primeira metade do século XX.")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineSpacing(20)
                    .padding()
            }
        }
    }
    
    struct LimiteLinhas : View {
        var body: some View {
            VStack {
                Text("Limite de 3 linhas")
                    .foregroundColor(.orange)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("Os computadores da Apple são melhores do que os computadores da Microsoft? Um é melhor do que o outro quando olhados empiricamente, baseado em dados e análises, testes e comparações objetivas?\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding()
                
                
                Text("\nSem limite de linhas\n")
                    .foregroundColor(.green)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Os computadores da Apple são melhores do que os computadores da Microsoft? Um é melhor do que o outro quando olhados empiricamente, baseado em dados e análises, testes e comparações objetivas?\n")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding()
            }
        }
    }
    
    struct FatorMinEscala : View {
        var body: some View {
            HStack {
                Text("Texto qualquer")
                    .bold()
                Text("Este é um texto bem longo, como você pode ver!")
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }.padding()
        }
    }
    
    struct Truncamento : View {
        var body: some View {
            VStack {
                Text("Esse é um bloco de texto que provavelmente contém múltiplas linhas. O texto vai preencher o espaço disponível e então, eventualmente, ser truncado.")
                    .frame(width: 150, height: 150)
                    .truncationMode(.tail)
                
                Text("Esse é um bloco de texto que provavelmente contém múltiplas linhas. O texto vai preencher o espaço disponível e então, eventualmente, ser truncado.")
                    .frame(width: 150, height: 150)
                    .truncationMode(.middle)
                
                Text("Esse é um bloco de texto que provavelmente contém múltiplas linhas. O texto vai preencher o espaço disponível e então, eventualmente, ser truncado.")
                    .frame(width: 150, height: 150)
                    .truncationMode(.head)
            }
        }
            
    }
    
    struct Kerning : View {
        var body: some View {
            VStack {
                Text("ABCDEF").kerning(-3)
                Text("ABCDEF")
                Text("ABCDEF").kerning(8)
            }.font(.title)
        }
    }
    
    struct Tracking : View {
        var body: some View {
            VStack {
                Text("ABCDEF").tracking(-3)
                Text("ABCDEF")
                Text("ABCDEF").tracking(8)
            }.font(.title)
        }
    }
}

