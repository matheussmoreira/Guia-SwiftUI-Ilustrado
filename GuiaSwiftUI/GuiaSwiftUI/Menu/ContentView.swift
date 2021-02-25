//
//  ContentView.swift
//  GuiaSwiftUI
//
//  Created by Ricardo Venieris on 26/01/21.
//

import SwiftUI

struct ContentView: View {
    var corComponentes = Color.blue
    var corOrganizacao = Color.orange
    var corModifiers = Color.green
    var corSobre = Color.purple
    var columns: [GridItem] =
             Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                    Text("Guia SwiftUI Ilustrado").font(.title).bold()
                    Text("Todos podem programar").font(.subheadline)
                Spacer()
                
                LazyVGrid(columns: columns){
                    NavigationLink(
                        destination: PaginaComponentes(corPagina: corComponentes)
                    ){
                        BotaoMaior(nome: "Componentes\nde interface", cor: corComponentes)
                    }
                    
                    NavigationLink(
                        destination: PaginaOrganizacao(
                            corPagina: corOrganizacao)
                    ){
                        BotaoMaior(nome: "Organização\nde conteúdo", cor: corOrganizacao)
                    }
                    
                    NavigationLink(
                        destination: PaginaModifiers(
                            corPagina: corModifiers)
                    ){
                        BotaoMaior(nome: "Modificadores\nuniversais", cor: corModifiers)
                    }
                    
                    NavigationLink(
                        destination: PaginaSobre(
                            corPagina: corSobre)
                    ){
                        BotaoMaior(nome: "Sobre o app", cor: corSobre)
                    }
                }.padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
