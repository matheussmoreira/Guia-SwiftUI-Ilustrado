//
//  MyText.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 07/02/23.
//

import SwiftUI

struct MyText_Previews: PreviewProvider {
    static var previews: some View {
        MyText.TamanhosFonte()
    }
}

struct MyText {
    
    struct TamanhosFonte: View {
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
    } // TamanhosFonte
    
    struct DesignFonte: View {
        var body: some View {
            VStack(spacing: 20) {
                Text("Default").fontDesign(.default)
                Text("Monospaced").fontDesign(.monospaced)
                Text("Rounded").fontDesign(.rounded)
                Text("Serif").fontDesign(.serif)
            }.font(.title).fontWeight(.medium)
        }
    } // DesignFonte
    
    struct LarguraFonte: View {
        var body: some View {
            VStack(spacing: 20) {
                Text("Standart").fontWidth(.standard)
                Text("Compressed").fontWidth(.compressed)
                Text("Condensed").fontWidth(.condensed)
                Text("Expanded").fontWidth(.expanded)
            }.font(.title).fontWeight(.medium)
        }
    } // LarguraFonte
    
    struct PesosFonte: View {
        var body: some View {
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
    } // PesosFonte
    
    struct NegritoItalico: View {
        var body: some View {
            VStack {
                Text("Apenas negrito")
                    .bold()
                
                Text("Apenas itálico")
                    .italic()
                
                Text("Negrito e itálico")
                    .bold()
                    .italic()
            }.font(.title)
        }
    } // NegritoItalico
    
    struct FontesSistema: View {
        var body: some View {
            VStack(spacing: 50) {
                Text("Fonte com tamanho 20")
                    .font(.system(size: 20))
                
                Text("20, peso Bold")
                    .font(.system(size: 20, weight: .bold))
                
                Text("Callout, design Serif e peso Medium")
                    .font(.system(.callout, design: .serif, weight: .medium))
                
                // Textos com design rounded e monospaced
                
                Text("20, design Rounded")
                    .font(.system(size: 20, design: .rounded))
                
                Text("Title3, design Monospaced")
                    .font(.system(.title3, design: .monospaced))
            }
        }
    } // FontesSistema
    
    struct CoresPadrao: View {
        @Environment(\.colorScheme) var colorScheme
        
        var body: some View {
            
            VStack(spacing: 40) {
                
                Spacer()
                
                Text("\tiOS 13.0+\t")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.black)
                    .fontWeight(.bold)
                    .cornerRadius(8)
                
                HStack(spacing: 20) {
                    VStack(alignment: .trailing, spacing: 10) {
                        Text("Black")
                            .foregroundColor(.black)
                        Text("Blue")
                            .foregroundColor(.blue)
                        Text("Gray")
                            .foregroundColor(.gray)
                        Text("Green")
                            .foregroundColor(.green)
                        Text("Orange")
                            .foregroundColor(.orange)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Pink")
                            .foregroundColor(.pink)
                        Text("Purple")
                            .foregroundColor(.purple)
                        Text("Red")
                            .foregroundColor(.red)
                        Text("Yellow")
                            .foregroundColor(.yellow)
                        Text(" White ")
                            .foregroundColor(.white)
                            .background(colorScheme == .dark ? nil : Color.gray)
                    }
                }.font(.title).fontWeight(.medium)
                
                Divider()
                
                Text("\tiOS 15.0+\t")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.black)
                    .fontWeight(.bold)
                    .cornerRadius(8)
                
                VStack(spacing: 10) {
                    Text("Brown")
                        .foregroundColor(.brown)
                    Text("Cyan")
                        .foregroundColor(.cyan)
                    Text("Indigo")
                        .foregroundColor(.indigo)
                    Text("Mint")
                        .foregroundColor(.mint)
                    Text("Teal")
                        .foregroundColor(.teal)
                }.font(.title).fontWeight(.medium)
                
                Spacer()
            } // VStack
        } // body
    } // CoresPadrao
    
    struct ModosClaroEscuro: View {
        var body: some View {
            Text("Mesmo código,\ncores diferentes")
                .foregroundColor(.primary)
                .font(.title)
                .fontWeight(.bold)
        }
    } // ModosClaroEscuro
    
    struct Sublinhado: View {
        var body: some View {
            VStack(spacing: 15) {
                
                Text("Aplicação de cores")
                    .font(.title)
                    .bold()
                    .padding(.vertical)
                
                Text("Cor padrão")
                    .foregroundColor(.blue)
                    .underline()
                
                Text("Cor customizada")
                    .underline(color: .orange)
                
                
                Divider()
                    .padding(.vertical)
                
                Text("Estilos de linha")
                    .font(.title)
                    .bold()
                    .padding(.vertical)
                
                Text("Solid (padrão)")
                    .underline(pattern: .solid)
                
                Text("Dash (traços)")
                    .underline(pattern: .dash)
                
                Text("Dot (pontos)")
                    .underline(pattern: .dot)
                
                Text("DashDot (traços e pontos)")
                    .underline(pattern: .dashDot)
                
                Text("DashDotDot (traços e 2 pontos)")
                    .underline(pattern: .dashDotDot)
                
            }.font(.title2)
        }
    } // Sublinhado
    
    struct Tachado: View {
        var body: some View {
            VStack(spacing: 15) {
                
                Text("Aplicação de cores")
                    .font(.title)
                    .bold()
                    .padding(.vertical)
                
                Text("Tachado padrão")
                    .foregroundColor(.green)
                    .strikethrough()
                
                Text("Tachado colorido")
                    .strikethrough(color: .red)
                
                Divider()
                    .padding(.vertical)
                
                Text("Estilos de linha")
                    .font(.title)
                    .bold()
                    .padding(.vertical)
                
                Text("Solid (padrão)")
                    .strikethrough(pattern: .solid)
                
                Text("Dash (traços)")
                    .strikethrough(pattern: .dash)
                
                Text("Dot (pontos)")
                    .strikethrough(pattern: .dot)
                
                Text("DashDot (traços e pontos)")
                    .strikethrough(pattern: .dashDot)
                
                Text("DashDotDot (traços e 2 pontos)")
                    .strikethrough(pattern: .dashDotDot)
                
            }.font(.title2)
        }
    } // Tachado
    
    struct Capitalizacao: View {
        var body: some View {
            VStack {
                Text("TUDO MINÚSCULO").textCase(.lowercase)
                Text("tudo maiúsculo").textCase(.uppercase)
            }.font(.title)
        }
    } // Capitalizacao
    
    struct Monospace: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("AA123456789")
                
                Text("AA123456789")
                    .monospacedDigit()
                
                Text("AA123456789")
                    .monospaced(true)
            }
            .font(.largeTitle)
            .fontWeight(.black)
        }
    } // Monospace
    
    struct Tracking: View {
        var body: some View {
            VStack {
                Text("ABCDEF").tracking(-3)
                Text("ABCDEF")
                Text("ABCDEF").tracking(8)
            }.font(.title)
        }
    } // Tracking
    
    struct Kerning: View {
        var body: some View {
            VStack {
                Text("ABCDEF").kerning(-3)
                Text("ABCDEF")
                Text("ABCDEF").kerning(8)
            }.font(.title)
        }
    } // Kerning
    
    struct DeslocamentoVertical : View {
        var body: some View {
            HStack {
                Text("Em baixo")
                    .baselineOffset(-20)
                    .border(Color.red)
                
                Text("Normal")
                    .border(Color.green)
                
                Text("Em cima")
                    .baselineOffset(20)
                    .border(Color.blue)
            }.font(.title)
        }
    } // DeslocamentoVertical
    
    struct Compressao: View {
        var body: some View {
            VStack {
                Text("Este é um texto bem longo")
                    .frame(width: 310, height: 50, alignment: .leading)
                    .lineLimit(1)
                    .allowsTightening(true)
                
                Text("Este é um texto bem longo")
                    .frame(width: 310, height: 50, alignment: .leading)
                    .lineLimit(1)
                    .allowsTightening(false)
            }.font(.title)
        }
    } // Compressao
    
    struct FatorMinEscala: View {
        var body: some View {
            HStack {
                Text("Texto qualquer")
                    .bold()
                    .foregroundColor(.red)
                Text("Este é um texto bem longo, como você pode ver!")
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }.padding()
        }
    } // FatorMinEscala
    
    struct Truncamento: View {
        var body: some View {
            VStack {
                Text("Esse é um bloco de texto que provavelmente contém múltiplas linhas. O texto vai preencher o espaço disponível e então, eventualmente, ser truncado.")
                    .frame(width: 150, height: 150)
                    .truncationMode(.tail)
                
                // Middle
                // Head
                
                Text("Esse é um bloco de texto que provavelmente contém múltiplas linhas. O texto vai preencher o espaço disponível e então, eventualmente, ser truncado.")
                    .frame(width: 150, height: 150)
                    .truncationMode(.middle)
                
                Text("Esse é um bloco de texto que provavelmente contém múltiplas linhas. O texto vai preencher o espaço disponível e então, eventualmente, ser truncado.")
                    .frame(width: 150, height: 150)
                    .truncationMode(.head)
            }
        }
        
    } // Truncamento
    
    struct AlinhamentoMultilinha: View {
        var body : some View {
            VStack {
                // Leading
                Text("Leading")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Se você quiser aprender SwiftUI temos duas dicas:\n\n")
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                // Center
                Text("Center")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Dica 1: Dedique pelo menos 30 minutos do seu dia para estudar sobre seus recursos.\n\n")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Trailing
                Text("Trailing")
                    .foregroundColor(.blue)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Dica 2: Depois pratique aquilo que você estudou para reforçar o aprendizado.\n\n")
                    .multilineTextAlignment(.trailing)
                    .padding(.horizontal)
            }
        }
    } // AlinhamentoMultilinha
    
    struct EspacamentoMultilinha: View {
        var body: some View {
            VStack {
                Text("Espaço de valor 5\n")
                    .foregroundColor(.red)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Hoje, os cientistas descrevem o universo a partir de duas teorias parciais básicas: a teoria da relatividade geral e a mecânica quântica.\n")
                    .lineSpacing(5)
                    .padding(.horizontal)
                
                // Espaço de valor 25
                
                Text("Espaço de valor 25\n")
                    .foregroundColor(.green)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Hoje, os cientistas descrevem o universo a partir de duas teorias parciais básicas: a teoria da relatividade geral e a mecânica quântica.")
                    .lineSpacing(25)
                    .padding(.horizontal)
            }
        }
    } // EspacamentoMultilinha
    
    struct LimiteMultilinha: View {
        var body: some View {
            VStack {
                Text("Limite de 3 linhas")
                    .foregroundColor(.orange)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("Os computadores da Apple são melhores do que os computadores da Microsoft? Um é melhor do que o outro quando olhados empiricamente, baseado em dados e análises, testes e comparações objetivas?\n")
                    .lineLimit(3)
                    .padding(.horizontal)
                
                // Sem limite de linhas
                
                Text("\nSem limite de linhas\n")
                    .foregroundColor(.green)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Os computadores da Apple são melhores do que os computadores da Microsoft? Um é melhor do que o outro quando olhados empiricamente, baseado em dados e análises, testes e comparações objetivas?\n")
                    .lineLimit(nil)
                    .padding(.horizontal)
            }
        }
    } // LimiteMultilinha
    
    struct EspelhamentoHorizontal: View {
        var body: some View {
            VStack {
                Text("יש כאן הרבה תוכן. נחשו מה אני אומר.")
                    .padding()
                
                Text("هناك الكثير من المحتوى هنا. خمن ما أقوله.")
                    .padding()
                
                Text("Agora o texto está em português, mas invertido.")
                    .flipsForRightToLeftLayoutDirection(true)
                    .padding()
            }
            .lineLimit(nil)
            .font(.title)
        }
    } // EspelhamentoHorizontal
    
}

