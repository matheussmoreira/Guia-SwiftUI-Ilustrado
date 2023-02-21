//
//  MyGrids.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 17/02/23.
//

import SwiftUI

struct MyGrids_Previews: PreviewProvider {
    static var previews: some View {
        MyGrids.ColunasOcupadas()
    }
}

struct MyGrids {
    struct ExemploBasico: View {
        var body: some View {
            Grid {
                GridRow {
                    MyGrids.Capsula(grauRotacao: 45, cor: .orange)
                    MyGrids.Capsula(grauRotacao: -45, cor: .blue)
                }
                GridRow {
                    MyGrids.Capsula(grauRotacao: -45, cor: .green)
                    MyGrids.Capsula(grauRotacao: 45, cor: .red)
                }
            } // Grid
        }
    } // Exemplo basico
    
    struct UnsizedAxes: View {
        var body: some View {
            VStack(spacing: 40){
                
                Grid {
                    Text("Sem o modificador")
                        .fontWeight(.medium)
                    
                    Divider()
                    
                    GridRow {
                        Image(systemName: "figure.handball")
                            .font(.largeTitle)
                        MyGrids.DividerVerticalPequeno()
                        Image(systemName: "figure.pool.swim")
                            .font(.largeTitle)
                    }
                    
                    Divider()
                    GridRow {
                        Image(systemName: "figure.hockey")
                            .font(.largeTitle)
                        MyGrids.DividerVerticalPequeno()
                        Image(systemName: "figure.outdoor.cycle")
                            .font(.largeTitle)
                    }
                }
                .padding()
                .border(.gray)
                .padding()
                
                Grid {
                    Text("Com o modificador")
                        .fontWeight(.medium)
                    
                    Divider().gridCellUnsizedAxes(.horizontal)
                    
                    // GridRow: ícones handball e natação
                    GridRow {
                        Image(systemName: "figure.handball")
                            .font(.largeTitle)
                        MyGrids.DividerVerticalPequeno()
                        Image(systemName: "figure.pool.swim")
                            .font(.largeTitle)
                    }
                    
                    Divider().gridCellUnsizedAxes(.horizontal)
                    
                    // GridRow: ícones hockey e ciclismo
                    GridRow {
                        Image(systemName: "figure.hockey")
                            .font(.largeTitle)
                        MyGrids.DividerVerticalPequeno()
                        Image(systemName: "figure.outdoor.cycle")
                            .font(.largeTitle)
                    }
                }
                .padding()
                .border(.gray)
                
            } // VStack
        }
    } // Unsized axes
    
    struct Alinhamentos: View {
        var body: some View {
            VStack(spacing: 40) {
                Text("Exemplo").font(.title)
                
                HStack {
                    MyGrids.GridAlinhada(alinhamento: .center, cor: .green)
                    MyGrids.GridAlinhada(alinhamento: .bottom, cor: .blue)
                }
                
                Divider()
                
                Text("Alinhamentos").font(.title)
                
                Grid(horizontalSpacing: 120, verticalSpacing: 60) {
                    GridRow {
                        MyGrids.CirculoPequeno(cor: .red)
                        MyGrids.CirculoPequeno(cor: .gray)
                        MyGrids.CirculoPequeno(cor: .mint)
                    }
                    
                    Divider()
                        .gridCellUnsizedAxes([.horizontal, .vertical])
                    
                    GridRow {
                        MyGrids.CirculoPequeno(cor: .yellow)
                        MyGrids.CirculoPequeno(cor: .blue)
                        MyGrids.CirculoPequeno(cor: .orange)
                    }
                    
                    Divider()
                        .gridCellUnsizedAxes([.horizontal, .vertical])
                    
                    GridRow {
                        MyGrids.CirculoPequeno(cor: .green)
                        MyGrids.CirculoPequeno(cor: .brown)
                        MyGrids.CirculoPequeno(cor: .purple)
                    }
                }
                .padding()
                .border(.gray)
            }
            .padding(.vertical)
            
        }
    } // Alinhamentos
    
    struct AlinhamentoColuna: View {
        var cor: Color = .blue
        
        var body: some View {
            Grid(alignment: .leading, horizontalSpacing: 40, verticalSpacing: 20) {
                
                GridRow {
                    MyGrids.QuadradoOpaco(cor: cor)
                    MyGrids.Losango(cor: .orange)
                        .gridColumnAlignment(.trailing)
                    MyGrids.QuadradoOpaco(cor: cor)
                }
                
                // Conteúdo restante da Grid
                
                ForEach(1..<4) { _ in
                    GridRow {
                        MyGrids.QuadradoTransparente(cor: cor)
                        MyGrids.QuadradoOpaco(cor: cor)
                        MyGrids.QuadradoTransparente(cor: cor)
                    }
                }
                
                GridRow {
                    MyGrids.QuadradoOpaco(cor: cor)
                    MyGrids.Losango(cor: .orange)
                    MyGrids.QuadradoOpaco(cor: cor)
                }
                
                GridRow {
                    MyGrids.QuadradoTransparente(cor: cor)
                    MyGrids.QuadradoOpaco(cor: cor)
                    MyGrids.QuadradoOpaco(cor: cor)
                }
            }.border(cor)
        }
    } // Alinhamento coluna
    
    struct EspacamentoHorizontal: View {
        var body: some View {
            VStack(spacing: 40) {
                MyGrids.GridEspacamentoHorizontal(valor: 1)
                Divider()
                MyGrids.GridEspacamentoHorizontal(valor: 5)
                Divider()
                MyGrids.GridEspacamentoHorizontal(valor: 50)
                Divider()
                MyGrids.GridEspacamentoHorizontal(valor: 100)
                
            }
        }
    } // Espacamento horizontal
    
    struct EspacamentoVertical: View {
        var body: some View {
            VStack(spacing: 20) {
                MyGrids.GridEspacamentoVertical(valor: 5)
                Divider()
                MyGrids.GridEspacamentoVertical(valor: 50)
                Divider()
                MyGrids.GridEspacamentoVertical(valor: 80)
                
            }
        }
    } // Espacamento vertical
    
    struct ColunasOcupadas: View {
        var body: some View {
            Grid {
                // GridRow superior
                GridRow {
                    MyGrids.QuadradoOpaco(cor: .green)
                    MyGrids.QuadradoOpaco(cor: .green)
                    MyGrids.QuadradoOpaco(cor: .green)
                    MyGrids.QuadradoOpaco(cor: .green)
                }
                GridRow {
                    MyGrids.QuadradoOpaco(cor: .green)
                    MyGrids.Losango(cor: .purple)
                        .gridCellColumns(2)
                    MyGrids.QuadradoOpaco(cor: .green)
                }
                // GridRow inferior
                GridRow {
                    MyGrids.QuadradoOpaco(cor: .green)
                    MyGrids.QuadradoOpaco(cor: .green)
                    MyGrids.QuadradoOpaco(cor: .green)
                    MyGrids.QuadradoOpaco(cor: .green)
                }
            }
        }
    } // Colunas ocupadas
}

// MARK: - Objetos

extension MyGrids {
    struct Capsula: View {
        var grauRotacao: Double
        var cor: Color
        
        var body: some View {
            Capsule()
                .frame(width: 50, height: 30)
                .foregroundColor(cor)
                .rotationEffect(Angle(degrees: grauRotacao))
                .frame(width: 50, height: 50, alignment: .center)
        }
    } // Capsula
    
    struct DividerVerticalPequeno: View {
        var body: some View {
            Divider()
                .rotationEffect(Angle(degrees: 90))
                .frame(width: 50)
        }
    }
    
    struct QuadradoOpaco: View {
        var cor: Color
        var body: some View {
            Rectangle()
                .frame(width: 40, height: 40)
                .foregroundColor(cor)
        }
    } // Quadrado opaco

    struct QuadradoTransparente: View {
        var width: CGFloat = 20
        
        var cor: Color
        var body: some View {
            Rectangle()
                .frame(width: width, height: width)
                .foregroundColor(cor)
                .opacity(0.25)
                .border(cor)
        }
    } // Quadrado transparente
    
    struct CirculoPequeno: View {
        var cor: Color
        var width: CGFloat = 20
        
        var body: some View {
            ZStack {
                Capsule()
                    .stroke(cor, lineWidth: 1)
                    .frame(width: width+1, height: width+1)
                    .foregroundColor(cor)
                
                Circle()
                    .frame(width: width, height: width)
                    .foregroundColor(cor)
                    .opacity(0.25)
            }
        }
    } // CirculoPequeno
    
    struct GridAlinhada: View {
        var alinhamento: Alignment
        var cor: Color
        
        var body: some View {
            Grid(alignment: alinhamento) {
                // Conteúdo da Grid
                Text(alinhamento.description)
                    .fontWeight(.medium)
                    .foregroundColor(cor)
                
                GridRow {
                    MyGrids.QuadradoOpaco(cor: cor)
                    MyGrids.QuadradoOpaco(cor: cor)
                }
                
                GridRow {
                    MyGrids.QuadradoTransparente(cor: cor)
                    MyGrids.QuadradoOpaco(cor: cor)
                }
            }.border(cor)
        }
    } // GridAlinhada
    
    struct GridEspacamentoHorizontal: View {
        var valor: CGFloat
        var valorInt: Int { Int(valor) }
        
        var body: some View {
            Grid(horizontalSpacing: valor) {
                Text("Espaçamento horizontal de \(valorInt.description)")
                    .fontWeight(.medium)
                    .padding(.bottom)
                
                GridRow {
                    Image(systemName: "figure.handball")
                    Image(systemName: "figure.pool.swim")
                }
                .font(.title)
                
                GridRow {
                    Image(systemName: "figure.hockey")
                    Image(systemName: "figure.outdoor.cycle")
                }
                .font(.title)
            }
        }
    } // GridEspacamentoHorizontal
    
    struct GridEspacamentoVertical: View {
        var valor: CGFloat
        var valorInt: Int { Int(valor) }
        
        var body: some View {
            Grid(verticalSpacing: valor) {
                Text("Espaçamento vertical de \(valorInt.description)")
                    .fontWeight(.medium)
                    .padding(.bottom)
                
                GridRow {
                    Image(systemName: "figure.handball")
                    Image(systemName: "figure.pool.swim")
                }
                .font(.title)
                
                GridRow {
                    Image(systemName: "figure.hockey")
                    Image(systemName: "figure.outdoor.cycle")
                }
                .font(.title)
            }
        }
    } // GridEspacamentoVertical

    struct Losango: View {
        var cor: Color
        var body: some View {
            MyGrids.QuadradoTransparente(cor: cor)
                .rotationEffect(Angle(degrees: 45))
        }
    } // Losango
}
