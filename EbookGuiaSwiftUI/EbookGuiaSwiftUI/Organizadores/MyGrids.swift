//
//  MyGrids.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 17/02/23.
//

import SwiftUI

struct MyGrids_Previews: PreviewProvider {
    static var previews: some View {
        MyGrids.Alinhamentos()
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
    
    struct ColunasEmOcupacao: View {
        var body: some View {
            Text(".gridCellColumns")
        }
    } // Colunas em ocupacao
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

//    struct Diamante: View {
//        var body: some View {
//            Rectangle()
//                .frame(width: 30, height: 30)
//                .foregroundColor(.gray)
//                .rotationEffect(Angle(degrees: 45))
//        }
//    } // Diamante
}
