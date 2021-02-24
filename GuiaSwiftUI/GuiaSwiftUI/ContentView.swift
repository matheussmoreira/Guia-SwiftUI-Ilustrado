//
//  ContentView.swift
//  GuiaSwiftUI
//
//  Created by Ricardo Venieris on 26/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Guia SwiftUI Ilustrado").font(.title).bold()
                Text("Todos podem programar").font(.subheadline)
                
                Spacer()
                NavigationLink(destination: PaginaTexto()){
                    BotaoSimples(nome: "Texto")
                }
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

struct BotaoSimples : View {
    @Environment(\.colorScheme) var colorScheme
    var nome: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 230.0, height: 50.0)
                .foregroundColor(colorScheme == .dark ? .white : .black)
            
            Text(nome)
                .bold()
                .foregroundColor(colorScheme == .dark ? .black : .white)
        }
    }
}

struct Barrinha : View {
    var body: some View {
        Rectangle()
            .frame(width: 60, height: 6)
            .cornerRadius(3.0)
            .opacity(0.1)
            .padding(.top)
    }
}
