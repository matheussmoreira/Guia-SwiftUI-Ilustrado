//
//  UI.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 07/03/21.
//

import SwiftUI

struct BotaoQuadrado : View {
    @Environment(\.colorScheme) var colorScheme
    var nome : String
    var cor: Color?
    var corNeutra : Color {
        let customGray = Color(red: 32/255, green: 32/255, blue: 37/255)
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
    @Environment(\.colorScheme) var colorScheme
    var nome : String
    var cor : Color {
        let customGray = Color(red: 32/255, green: 32/255, blue: 37/255)
        return colorScheme == .dark ? customGray : .white
    }
    
    var body : some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width-20, height: 100)
                .shadow(radius: 2)
                .foregroundColor(cor)
            
            Text(nome)
                .bold()
                .foregroundColor(cor == .white ? .black : .white)
                .multilineTextAlignment(.center)
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
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }.offset(y: -40)
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
