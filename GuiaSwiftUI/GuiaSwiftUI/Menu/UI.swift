//
//  UI.swift
//  GuiaSwiftUI
//
//  Created by User on 07/03/21.
//

import SwiftUI

struct BotaoQuadrado_Previews: PreviewProvider {
    static var previews: some View {
        BotaoQuadrado(nome: "Nome", cor: nil).preferredColorScheme(.dark)
    }
}

struct BotaoQuadrado : View {
    @Environment(\.colorScheme) var colorScheme
    var nome : String
    let customGray = Color(red: 32/255, green: 32/255, blue: 37/255)
    var cor: Color?
    var corNeutra : Color {
        return colorScheme == .dark ? customGray : .white
    }
    var corBotao : Color {
        return cor == nil ? corNeutra : cor!
    }
    
    var size = UIScreen.main.bounds.width/2-20
    
    var body : some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: size, height: size)
                .shadow(radius: 2)
                .foregroundColor(corBotao)
            
            Text(nome)
                .bold()
                .foregroundColor(corBotao == .white ? .black : .white)
                .multilineTextAlignment(.center)
        }
    }
}

struct BotaoRetangular : View {
    var nome : String
    var body : some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width, height: 100)
                .shadow(radius: 2)
            Text(nome)
        }
    }
}

struct TituloEmBarra : View {
    var titulo: String
    var corBarra: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 100)
                .foregroundColor(corBarra)
            
            Text(titulo)
        }.offset(y: -32)
    }
}

struct Espacinho : View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Rectangle()
            .frame(width: UIScreen.main.bounds.width, height: 50)
            .foregroundColor(colorScheme == .dark ? .black : .white)
    }
}
