//
//  PaginaSpacer.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct LinhaSpacer: View {
    @State private var showAbaixo = false
    @State private var showEntre = false
    @State private var showAcima = false
    @State private var showAntes = false
    @State private var showDepois = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Spacer").font(.title).bold()
                Spacer()
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    BotaoRetangular(nome: "Abaixo do texto")
                        .onTapGesture { showAbaixo.toggle() }
                        .sheet(isPresented: $showAbaixo) {
                            Espaco.SpacerAbaixo()
                        }
                    
                    BotaoRetangular(nome: "Entre textos")
                        .onTapGesture { showEntre.toggle() }
                        .sheet(isPresented: $showEntre) {
                            Espaco.SpacerNoMeio()
                        }
                    
                    BotaoRetangular(nome: "Acima do texto")
                        .onTapGesture { showAcima.toggle() }
                        .sheet(isPresented: $showAcima) {
                            Espaco.SpacerAcima()
                        }
                    
                    BotaoRetangular(nome: "Antes do texto")
                        .onTapGesture { showAntes.toggle() }
                        .sheet(isPresented: $showAntes) {
                            Espaco.SpacerHorizontal()
                        }
                    
                    BotaoRetangular(nome: "Depois do texto")
                        .onTapGesture { showDepois.toggle() }
                        .sheet(isPresented: $showDepois) {
                            Espaco.SpacerHorizontal2()
                        }
                }.padding(.horizontal)
            }
        }
    }
}

struct LinhaSpacer_Previews: PreviewProvider {
    static var previews: some View {
        LinhaSpacer()
    }
}
