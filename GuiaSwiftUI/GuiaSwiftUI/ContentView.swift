//
//  ContentView.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Pesos()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct UmTexto : View {
    var body: some View {
        Text("Se você está lendo isso, parabéns!!")
    }
}

struct Tamanhos : View {
    var body: some View {
        VStack {
            Text("Large Title")
                .font(.largeTitle)
                .padding(.bottom)
            
            HStack {
                Text("Title -")
                    .font(.title)
                Text("Title 2 -")
                    .font(.title2)
                Text("Title 3")
                    .font(.title3)
            }.padding(.bottom)
                
            HStack {
                Text("Headline -")
                    .font(.headline)
                
                Text("Subheadline")
                    .font(.subheadline)
            }.padding(.bottom)
            
            Text("Body (tamanho padrão)")
                .font(.body)
                .padding(.bottom)
            
            Text("Callout")
                .font(.callout)
                .padding(.bottom)
            
            HStack {
                Text("Caption -")
                    .font(.caption)
                Text("Caption 2")
                    .font(.caption2)
            }.padding(.bottom)
            
            Text("Footnote")
                .font(.footnote)
        }
    }
}

struct Pesos : View {
    var body : some View {
        VStack {
            Text("Black\n")
                .fontWeight(.black)
            Text("Heavy\n")
                .fontWeight(.heavy)
            Text("Bold\n")
                .fontWeight(.bold)
            Text("Semibold\n")
                .fontWeight(.semibold)
            Text("Medium\n")
                .fontWeight(.medium)
            Text("Regular (peso padrão)\n")
                .fontWeight(.regular)
            Text("Thin\n")
                .fontWeight(.thin)
            Text("Light\n")
                .fontWeight(.light)
            Text("Ultra light")
                .fontWeight(.ultraLight)
        }
    }
}
