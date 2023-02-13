//
//  MyDivider.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 13/02/23.
//

import SwiftUI

struct MyDivider_Previews: PreviewProvider {
    static var previews: some View {
        MyDivider.ExemploUnico()
    }
}

struct MyDivider {
    struct ExemploUnico: View {
        var body: some View {
            VStack {
                // Circulos azuis
                VStack {
                    CirculoAzul()
                    Divider().padding()
                    CirculoAzul()
                }
                .frame(width: 300, height: 300)
                .border(Color.blue)
                .padding()
                
                // Circulos laranjas
                HStack {
                    CirculoLaranja()
                    Divider().padding()
                    CirculoLaranja()
                }
                .frame(width: 300, height: 300)
                .border(Color.orange)
                .padding()
            }
        } // body
    }
}

struct CirculoAzul: View {
    var body: some View {
        Circle()
            .frame(width: 75, height: 75)
            .foregroundColor(.blue)
    }
}

struct CirculoLaranja: View {
    var body: some View {
        Circle()
            .frame(width: 75, height: 75)
            .foregroundColor(.orange)
    }
}
