//
//  MyLazyGrids.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 27/07/21.
//

import SwiftUI

struct MyLazyGrids_Previews: PreviewProvider {
    static var previews: some View {
        MyLazyGrids.VGridItemAlignment()
        MyLazyGrids.HGridItemAlignment()
    }
}

struct MyLazyGrids {
    struct VGrid: View {
        let cols: [GridItem] =
            Array(repeating: GridItem(.flexible()), count: 5)
        
        var body: some View {
            VStack {
                Text("LazyVGrid").font(.largeTitle).bold().padding()
                LazyVGrid(columns: cols){
                    ForEach((1...20), id: \.self) {
                        Text("\($0)")
                            .font(.title)
                    }
                }
            }
        } // body
    }
    
    struct HGrid: View {
        var linhas: [GridItem] =
            Array(repeating: GridItem(.fixed(30)), count: 5)
        
        var body: some View {
            VStack {
                Text("LazyHGrid").font(.largeTitle).bold()
                LazyHGrid(rows: linhas) {//}, alignment: .center, spacing: 15) {
                    ForEach((1...20), id: \.self) {
                        Text("\($0)")
                            .font(.title)
                    }
                }
            }
        } // body
    }
    
    struct VGridAlignment : View {
        let cols: [GridItem] =
            Array(repeating: GridItem(.flexible()), count: 5)
        
        var body: some View {
            VStack {
                Text("Alinhamento\nem LazyVGrid")
                    .font(.title3)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 60)
                            .foregroundColor(.blue)
                        Text(".leading")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retagulo azul com texto
                    LazyVGrid(columns: cols, alignment: .leading) {
                        ForEach((1...20), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.border(Color.blue).padding(.vertical)
                
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 60)
                            .foregroundColor(.green)
                        Text(".center")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retagulo verde com texto
                    LazyVGrid(columns: cols, alignment: .center) {
                        ForEach((1...20), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.border(Color.green).padding(.vertical)
                
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 60)
                            .foregroundColor(.red)
                        Text(".trailing")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retagulo vermelho com texto
                    LazyVGrid(columns: cols, alignment: .trailing) {
                        ForEach((1...20), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.border(Color.red).padding(.vertical)
                
            }.padding()
        } // body
    }
    
    struct HGridAlignment : View {
        var linhas: [GridItem] =
            Array(repeating: GridItem(.fixed(30)), count: 2)
        
        var body: some View {
            VStack {
                Text("Alinhamento\nem LazyHGrid")
                    .font(.title3)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                VStack {
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 120)
                                .foregroundColor(.blue)
                            Text(".top")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                        } // retangulo azul com texto
                        
                        LazyHGrid(rows: linhas, alignment: .top) {
                            ForEach((1...12), id: \.self) {
                                Text("\($0)")
                                    .font(.title2)
                            }
                        }
                    }.frame(height: 120).border(Color.blue)
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 120)
                                .foregroundColor(.green)
                            Text(".center")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                        } // retangulo verde com texto
                        LazyHGrid(rows: linhas, alignment: .center) {
                            ForEach((1...12), id: \.self) {
                                Text("\($0)")
                                    .font(.title2)
                            }
                        }
                    }.frame(height: 120).border(Color.green)
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 120)
                                .foregroundColor(.red)
                            Text(".bottom")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                        } // retangulo vermelho com texto
                        LazyHGrid(rows: linhas, alignment: .bottom) {
                            ForEach((1...12), id: \.self) {
                                Text("\($0)")
                                    .font(.title2)
                            }
                        }
                    }.frame(height: 120).border(Color.red)
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 120)
                                .foregroundColor(.purple)
                            Text(".first\nText\nBaseline")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                        } // retangulo vermelho com texto
                        LazyHGrid(rows: linhas, alignment: .firstTextBaseline) {
                            ForEach((1...12), id: \.self) {
                                Text("\($0)")
                                    .font(.title2)
                            }
                        }
                    }.frame(height: 120).border(Color.purple)
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 120)
                                .foregroundColor(.orange)
                            Text(".last\nText\nBaseline")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title2)
                        } // retangulo vermelho com texto
                        LazyHGrid(rows: linhas, alignment: .lastTextBaseline) {
                            ForEach((1...12), id: \.self) {
                                Text("\($0)")
                                    .font(.title2)
                            }
                        }
                    }.frame(height: 120).border(Color.orange)
                }
                
            }.padding()
        }
    }
    
    struct VGridSpacing: View {
        let cols: [GridItem] =
            Array(repeating: GridItem(.flexible()), count: 4)
        
        var body: some View {
            VStack {
                Text("Espaçamento em LazyVGrid")
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 60)
                            .foregroundColor(.blue)
                        Text("Valor 5")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retagulo azul com texto
                    LazyVGrid(columns: cols, spacing: 5) {
                        ForEach((1...20), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.border(Color.blue).padding(.horizontal)
                
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 60)
                            .foregroundColor(.green)
                        Text("Valor 40")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retagulo verde com texto
                    LazyVGrid(columns: cols, spacing: 40) {
                        ForEach((1...20), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.border(Color.green).padding(.horizontal)
            }
        } // body
    }
    
    struct HGridSpacing: View {
        var linhas: [GridItem] =
            Array(repeating: GridItem(.fixed(30)), count: 2)
        
        var body: some View {
            VStack {
                Text("Espaçamento em LazyHGrid")
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 120)
                            .foregroundColor(.blue)
                        Text("Valor 5")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retangulo azul com texto
                    
                    LazyHGrid(rows: linhas, spacing: 5) {
                        ForEach((1...12), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.frame(height: 120).border(Color.blue)
                
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 120)
                            .foregroundColor(.green)
                        Text("Valor 20")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retangulo verde com texto
                    LazyHGrid(rows: linhas, spacing: 20) {
                        ForEach((1...12), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.frame(height: 120).border(Color.green)
            }
        }
        
    }
    
    struct GridItemExemplos: View {
        let cols1: [GridItem] = Array(repeating: GridItem(.fixed(30), alignment: .top), count: 5)
        let linhas = [GridItem(.adaptive(minimum: 50), spacing: 25)]
        let cols2: [GridItem] = [GridItem(.flexible(minimum: 20)), GridItem(.fixed(240))]
        
        
        var body: some View {
            VStack {
                LazyVGrid(columns: cols1){
                    ForEach(1..<11) { _ in
                        Rectangle()
                            .foregroundColor(Color.blue)
                    }
                }.padding()
                
                LazyHGrid(rows: linhas, spacing: 40){
                    ForEach(1..<31) { _ in
                        Circle()
                            .foregroundColor(Color.black)
                            .border(Color.yellow)
                    }
                }.padding()
                
                LazyVGrid(columns: cols2){
                    ForEach(1..<21) { _ in
                        Rectangle()
                            .foregroundColor(Color.purple)
                        
                    }
                }.padding()
                
            }
        }
    }
    
    struct VGridItemFixed: View {
        let vetor1 = Array(repeating: GridItem(.fixed(30)), count: 5)
        let vetor2 = Array(repeating: GridItem(.fixed(60)), count: 5)
        
        var body: some View {
            VStack {
                Text("Valor 30").font(.title).bold()
                LazyVGrid(columns: vetor1){
                    ForEach(1..<61) { _ in
                        Circle().border(Color.orange)
                    }
                }.padding()
                Text("Valor 60").font(.title).bold()
                LazyVGrid(columns: vetor2){
                    ForEach(1..<61) { _ in
                        Circle().border(Color.orange)
                    }
                }.padding()
            }
            
        }
    }
    
    struct HGridItemFixed: View {
        let vetor1: [GridItem] = Array(repeating: GridItem(.fixed(30)), count: 5)
        let vetor2: [GridItem] = Array(repeating: GridItem(.fixed(60)), count: 5)
        
        var body: some View {
            VStack {
                Text("Valor 30").font(.title).bold()
                LazyHGrid(rows: vetor1){
                    ForEach(1..<61) { _ in
                        Circle().border(Color.blue)
                    }
                }
                
                Text("Valor 60").font(.title).bold()
                LazyHGrid(rows: vetor2){
                    ForEach(1..<61) { _ in
                        Circle().border(Color.blue)
                    }
                }
            }
            
        }
    }
    
    struct VGridItemFlexible: View {
        var vetor1 = [GridItem(.flexible(maximum: 50)), GridItem(.flexible())]
        var vetor2 = [GridItem(.flexible(minimum: 200)), GridItem(.flexible())]
        
        var body: some View {
            VStack {
                Text("Coluna 1: tamanho máximo de 50\nColuna 2: tamanho correspondente ao espaço restante").font(.title3).bold()
                LazyVGrid(columns: vetor1){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.pink)
                    }
                }.padding()
                
                Text("Coluna 1: tamanho mínimo de 200\nColuna 2: tamanho correspondente ao espaço restante").font(.title3).bold()
                LazyVGrid(columns: vetor2){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.pink)
                    }
                }.padding()

            }
        }
    }
    
    struct HGridItemFlexible: View {
        var vetor1 = [GridItem(.flexible(maximum: 50)), GridItem(.flexible())]
        var vetor2 = [GridItem(.flexible(minimum: 200)),GridItem(.flexible())]
        
        var body: some View {
            VStack {
                Text("Linha 1: tamanho máximo de 50\nLinha 2: tamanho correspondente ao espaço restante").font(.title3).bold()
                LazyHGrid(rows: vetor1){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.yellow)
                    }
                }.padding()
                
                Text("Linha 1: tamanho mínimo de 200\nLinha 2: tamanho correspondente ao espaço restante").font(.title3).bold()
                LazyHGrid(rows: vetor2){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.yellow)
                    }
                }.padding()

            }
        }
    }
    
    struct VGridItemAdaptative: View {
        var vetor1 = [GridItem(.adaptive(minimum: 50))]
        var vetor2 = [GridItem(.adaptive(minimum: 100))]
        
        var body: some View {
            VStack {
                Text("Tamanho mínimo de 50").font(.title3).bold()
                LazyVGrid(columns: vetor1){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.green)
                    }
                }.padding()
                
                Text("Tamanho mínimo de 100").font(.title3).bold()
                LazyVGrid(columns: vetor2){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.green)
                    }
                }.padding()
                
            }
        }
    }
    
    struct HGridItemAdaptative: View {
        var vetor1 = [GridItem(.adaptive(minimum: 20))]
        var vetor2 = [GridItem(.adaptive(minimum: 70))]
        
        var body: some View {
            VStack {
                Text("Tamanho mínimo de 20").font(.title3).bold()
                LazyHGrid(rows: vetor1){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.gray)
                    }
                }.padding()
                
                Text("Tamanho mínimo de 70").font(.title3).bold()
                LazyHGrid(rows: vetor2){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.gray)
                    }
                }.padding()
                
            }
        }
    }
    
    struct VGridItemFixedFlexible: View {
        var vetor1 = [
            GridItem(.fixed(250)),
            GridItem(.flexible(maximum: 50))
        ]
        
        var vetor2 = [
            GridItem(.fixed(250)),
            GridItem(.flexible(minimum: 50))
        ]
        
        var body: some View {
            VStack {
                Text("Coluna 1: tamanho fixo de 250\nColuna 2: tamanho flexível, máximo de 50 (podendo ser menor)").font(.title3).bold().padding()
                LazyVGrid(columns: vetor1){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.blue)
                    }
                }.padding()
                
                Text("Coluna 1: tamanho fixo de 250\nColuna 2: tamanho flexível, mínimo de 50 (podendo ser maior)").font(.title3).bold().padding()
                LazyVGrid(columns: vetor2){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.blue)
                    }
                }.padding()

            }
        }
    }
    
    // em desuso
    struct VGridItemAdaptativeFlexible: View {
        var vetor1 = [
            GridItem(.adaptive(minimum: 20)),
            GridItem(.flexible())
        ]
        
        var vetor2 = [
            GridItem(.adaptive(minimum: 60)),
            GridItem(.flexible())
        ]
        
        var body: some View {
            VStack {
                Text("Seis primeiras colunas: itens com tamanho adaptativo, mínimo de 20\n\nÚltima coluna: itens com tamanho flexível").font(.title3).bold().padding()
                LazyVGrid(columns: vetor1){
                    ForEach(1..<21) { n in
                        Rectangle().foregroundColor(.purple)
                    }
                }.padding()
                
                Text("Seis primeiras colunas: itens com tamanho adaptativo, mínimo de 60\n\nÚltima coluna: itens com tamanho flexível").font(.title3).bold().padding()
                LazyVGrid(columns: vetor2){
                    ForEach(1..<21) { n in
                        Rectangle().foregroundColor(.purple)
                    }
                }.padding()
            }
        }
    }
    
    struct VGridItemFixedAdaptative: View {
        var vetor3 = [
            GridItem(.adaptive(minimum: 10)),
            GridItem(.fixed(200))
        ]
        
        var vetor4 = [
            GridItem(.adaptive(minimum: 40)),
            GridItem(.fixed(200))
        ]
        
        var body: some View {
            VStack {
                Text("Cinco primeiras colunas: itens com tamanho adaptativo, mínimo de 10\n\nÚltima coluna: itens com tamanho fixo de 200").font(.title3).bold().padding()
                LazyVGrid(columns: vetor3){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.red)
                    }
                }.padding()
                
                Text("Cinco primeiras colunas: itens com tamanho adaptativo, mínimo de 40\n\nÚltima coluna: itens com tamanho fixo de 200").font(.title3).bold().padding()
                LazyVGrid(columns: vetor4){
                    ForEach(1..<21) { _ in
                        Rectangle().foregroundColor(.red)
                    }
                }.padding()
            }
        }
    }
    
    struct VGridItemSpacing: View {
        let vetor1 = Array(
            repeating: GridItem(.flexible(), spacing: 20),
            count: 3
        )
        
        let vetor2 = Array(
            repeating: GridItem(.flexible(), spacing: 60),
            count: 3
        )
        
        var body: some View {
            VStack {
                Text("Valor 20").font(.title).bold()
                LazyVGrid(columns: vetor1){
                    ForEach(1..<31) { _ in
                        Rectangle().foregroundColor(.purple)
                    }
                }.padding()
                Text("Valor 60").font(.title).bold()
                LazyVGrid(columns: vetor2){
                    ForEach(1..<31) { _ in
                        Rectangle().foregroundColor(.purple)
                    }
                }.padding()
            }
        }
    }
    
    struct HGridItemSpacing: View {
        let vetor1 = Array(
            repeating: GridItem(.flexible(), spacing: 20),
            count: 3
        )
        
        let vetor2 = Array(
            repeating: GridItem(.flexible(), spacing: 60),
            count: 3
        )
        
        var body: some View {
            HStack {
                VStack {
                    Text("Valor 20").font(.title).bold()
                    LazyHGrid(rows: vetor1){
                        ForEach(1..<21) { _ in
                            Rectangle().foregroundColor(.yellow)
                        }
                    }.padding(.horizontal)
                }
                VStack {
                    Text("Valor 60").font(.title).bold()
                    LazyHGrid(rows: vetor2){
                        ForEach(1..<21) { _ in
                            Rectangle().foregroundColor(.yellow)
                        }
                    }.padding(.horizontal)
                }
            }
        }
    }
    
    struct VGridItemAlignment: View {
        let vetor1 = Array(
            repeating: GridItem(.flexible(), alignment: .leading),
            count: 5
        )
        
        let vetor2 = Array(
            repeating: GridItem(.flexible(), alignment: .center),
            count: 5
        )
        
        let vetor3 = Array(
            repeating: GridItem(.flexible(), alignment: .trailing),
            count: 5
        )
        
        var body: some View {
            VStack {
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(height: 40)
                            .foregroundColor(.orange)
                        Text(".leading")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retagulo azul com texto
                    LazyVGrid(columns: vetor1) {
                        ForEach((1...15), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.border(Color.orange).padding(.vertical)
                
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(height: 40)
                            .foregroundColor(.orange)
                        Text(".center")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retagulo azul com texto
                    LazyVGrid(columns: vetor2) {
                        ForEach((1...15), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.border(Color.orange).padding(.vertical)
                
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(height: 40)
                            .foregroundColor(.orange)
                        Text(".trailing")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retagulo azul com texto
                    LazyVGrid(columns: vetor3) {
                        ForEach((1...15), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.border(Color.orange).padding(.vertical)
                
            }.padding(.horizontal)
        }
    }
    
    struct HGridItemAlignment: View {
        let vetor1 = Array(
            repeating: GridItem(.flexible(), alignment: .top),
            count: 2
        )
        
        let vetor2 = Array(
            repeating: GridItem(.flexible(), alignment: .center),
            count: 2
        )
        
        let vetor3 = Array(
            repeating: GridItem(.flexible(), alignment: .bottom),
            count: 2
        )
        
        var body: some View {
            VStack {
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 120)
                            .foregroundColor(.green)
                        Text(".top")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retangulo azul com texto
                    
                    LazyHGrid(rows: vetor1) {
                        ForEach((1...12), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.frame(height: 150).border(Color.green)
                
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 120)
                            .foregroundColor(.green)
                        Text(".center")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retangulo verde com texto
                    LazyHGrid(rows: vetor2) {
                        ForEach((1...12), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.frame(height: 150).border(Color.green)
                
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 120)
                            .foregroundColor(.green)
                        Text(".bottom")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title2)
                    } // retangulo vermelho com texto
                    LazyHGrid(rows: vetor3) {
                        ForEach((1...12), id: \.self) {
                            Text("\($0)")
                                .font(.title2)
                        }
                    }
                }.frame(height: 150).border(Color.green)
                
            }
        }
    }
    
}


