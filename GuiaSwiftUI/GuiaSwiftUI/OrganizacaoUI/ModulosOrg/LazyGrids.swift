//
//  LazyGrids.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 27/07/21.
//

import SwiftUI

struct LazyGrids_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrids.HGridAlignment()
    }
}

struct LazyGrids {
    struct VGrid : View {
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
    
    struct HGrid : View {
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
}


