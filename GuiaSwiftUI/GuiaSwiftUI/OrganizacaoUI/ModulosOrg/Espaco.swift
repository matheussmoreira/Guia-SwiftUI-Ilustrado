//
//  Espaco.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 16/02/21.
//

import SwiftUI

struct Espaco_Previews : PreviewProvider {
    static var previews: some View {
        Espaco.SpacerAbaixo()
        Espaco.SpacerAcima()
        Espaco.SpacerNoMeio()
        Espaco.SpacerHorizontal()
    }
}

struct Espaco {
    struct SpacerAbaixo : View {
        var body: some View {
            VStack {
                Text("Spacer inserido\nabaixo do texto")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
            }
        }
    }
    
    struct SpacerAcima : View {
        var body: some View {
            VStack {
                Spacer()
                Text("Spacer inserido\nacima do texto")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
    }
    
    struct SpacerNoMeio : View {
        var body: some View {
            
            VStack {
                Text("Spacer entre")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Text("dois textos")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
    }
    
    struct SpacerHorizontal : View {
        var body: some View {
            HStack {
                Spacer()
                Text("Spacer\nantes")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
            }
        }
    }
    
    struct SpacerHorizontal2 : View {
        var body: some View {
            HStack {
                Text("Spacer\ndepois")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Spacer()
            }
        }
    }
}
