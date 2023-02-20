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
                    MyDivider.CirculoAzul()
                    Divider().padding()
                    MyDivider.CirculoAzul()
                }
                .frame(width: 300, height: 300)
                .border(Color.blue)
                .padding()
                
                // Circulos laranjas
                HStack {
                    MyDivider.CirculoLaranja()
                    Divider().padding()
                    MyDivider.CirculoLaranja()
                }
                .frame(width: 300, height: 300)
                .border(Color.orange)
                .padding()
            }
        } // body
    }
}

// MARK: - Objetos

extension MyDivider {
    struct CirculoAzul: View {
        var body: some View {
            Circle()
                .frame(width: 75, height: 75)
                .foregroundColor(.blue)
        }
    } // Circulo azul

    struct CirculoLaranja: View {
        var body: some View {
            Circle()
                .frame(width: 75, height: 75)
                .foregroundColor(.orange)
        }
    } // Circulo laranja
}
