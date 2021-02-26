//
//  PaginaPadding.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct LinhaPadding: View {
    @State private var showPosicoes = false
    @State private var showValores = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Padding").font(.title).bold()
                Spacer()
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    BotaoRetangular(nome: "Posições")
                        .onTapGesture { showPosicoes.toggle() }
                        .sheet(isPresented: $showPosicoes) {
                            Padding.Posicoes()
                        }
                    
                    BotaoRetangular(nome: "Valores\nnuméricos")
                        .onTapGesture { showValores.toggle() }
                        .sheet(isPresented: $showValores) {
                            Padding.ValorNumerico()
                        }
            
                }.padding(.horizontal)
            }
        }
    }
}

struct LinhaPadding_Previews: PreviewProvider {
    static var previews: some View {
        LinhaPadding()
    }
}
