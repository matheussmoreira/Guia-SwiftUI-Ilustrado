//
//  PaginaBotoes.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct LinhaBotao: View {
    @State private var showNormal = false
    @State private var showSheet = false
    @State private var showFullScreen = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Button").font(.title).bold()
                Spacer()
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    BotaoRetangular(nome: "Botão Normal")
                        .onTapGesture { showNormal.toggle() }
                        .sheet(isPresented: $showNormal) {
                            Botao.ExemploInicial()
                        }
                    
                    BotaoRetangular(nome: "Sheet")
                        .onTapGesture { showSheet.toggle() }
                        .sheet(isPresented: $showSheet) {
                            Botao.Sheet(mostrarSheet: $showSheet)
                        }
                    
                    BotaoRetangular(nome: "Full screen")
                        .onTapGesture { showFullScreen.toggle() }
                        .fullScreenCover(isPresented: $showFullScreen) {
                            Botao.FullScreen(fullScreen: $showFullScreen)
                        }
                    
                }.padding(.horizontal)
            }
            Spacer()
        }
    }
}

struct LinhaBotao_Previews: PreviewProvider {
    static var previews: some View {
        LinhaBotao()
    }
}
