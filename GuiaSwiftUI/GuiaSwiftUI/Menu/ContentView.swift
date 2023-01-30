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
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        
        NavigationView {
            VStack {
                Spacer()
                
                Text("Guia SwiftUI Ilustrado").font(.title).bold()
                
                LazyVGrid(columns: columns){
                    BotaoQuadrado(
                        nome: "Componentes\nde interface",
                        cor: corComponentes)
                    
                    BotaoQuadrado(
                        nome: "Organização\nde conteúdo",
                        cor: corOrganizacao)
                    
                    BotaoQuadrado(
                        nome: "Modificadores\nuniversais",
                        cor: corModifiers)
                    
                    BotaoQuadrado(
                        nome: "Sobre o app",
                        cor: corSobre)
                    
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
