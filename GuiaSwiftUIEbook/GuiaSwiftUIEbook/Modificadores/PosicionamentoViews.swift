//
//  PosicionamentoViews.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 12/02/23.
//

import SwiftUI

struct PosicionamentoViews_Previews: PreviewProvider {
    static var previews: some View {
        PosicionamentoViews.PaddingValorNumerico()
    }
}

struct PosicionamentoViews {
    struct PaddingPosicoes: View {
        var body: some View {
            VStack(spacing: 25) {
                    VStack {
                        Text("Sem padding")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Circle().foregroundColor(.green)
                            .frame(width: 40, height: 40)
                            .border(Color.red)
                    } // Sem padding
                    
                    VStack {
                        Text(" Com padding")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Circle().foregroundColor(.green).frame(width: 50, height: 50)
                            .padding()
                            .border(Color.red)
                    } // Com padding
                    
                    VStack {
                        Text(".top")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Circle().foregroundColor(.green)
                            .frame(width: 40, height: 40)
                            .padding(.top)
                            .border(Color.red)
                    } // Top
                    
                    VStack {
                        Text(".bottom")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 40, height: 40)
                            .padding(.bottom)
                            .border(Color.red)
                    } // Bottom
                
                    VStack {
                        Text(".leading")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Circle().foregroundColor(.green).frame(width: 40, height: 40)
                            .padding(.leading)
                            .border(Color.red)
                    } // Leading
                    
                    VStack {
                        Text(".trailing")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Circle().foregroundColor(.green).frame(width: 50, height: 50)
                            .padding(.trailing)
                            .border(Color.red)

                    } // Trailing
            } // VStack
        }
    } // PaddingPosicoes
    
    struct PaddingMultiplasPosicoes: View {
        var body: some View {
            VStack(spacing: 25) {
                VStack {
                    Text(".top e .leading")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 40, height: 40)
                        .padding([.top, .leading])
                        .border(Color.red)
                } // Top e leading
                
                VStack {
                    Text(".vertical")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 40, height: 40)
                        .padding(.vertical)
                        .border(Color.red)
                } // Vertical
                
                VStack {
                    Text(".horizontal")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 40, height: 40)
                        .padding(.horizontal)
                        .border(Color.red)
                } // Vertical
            }
        }
    } // PaddingMultiplasPosicoes
    
    struct PaddingValorNumerico: View {
        var body: some View {
            VStack(alignment: .leading, spacing: 30) {
                Text(".trailing, 25")
                    .foregroundColor(.white)
                    .padding(.trailing, 25)
                    .background(.purple)
                
                Text(".trailing, 70")
                    .foregroundColor(.white)
                    .padding(.trailing, 70)
                    .background(.purple)
            }
            .font(.title)
            .fontWeight(.medium)
        }
    } // PaddingValorNumerico
}
