//
//  PaginaDivisor.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaDivisor: View {
    @State private var showExemploUnico = false
    
    var body: some View {
        VStack {
            BotaoSimples(nome: "Exemplo único")
                .onTapGesture {
                    showExemploUnico.toggle()
                }
                .sheet(isPresented: $showExemploUnico) {
                    Divisor.ExemploUnico()
                }
        }.navigationBarTitle("Divider")
    }
}

struct PaginaDivisor_Previews: PreviewProvider {
    static var previews: some View {
        PaginaDivisor()
    }
}
