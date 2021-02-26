//
//  LinhaDivider.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 26/02/21.
//

import SwiftUI

struct LinhaDivider: View {
    @State private var showDivider = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Divider").font(.title).bold()
                Spacer()
            }.padding()
            
            HStack {
                BotaoRetangular(nome: "Exemplo único")
                    .onTapGesture { showDivider.toggle() }
                    .sheet(isPresented: $showDivider) {
                        Divisor.ExemploUnico()
                    }
                    .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct LinhaDivider_Previews: PreviewProvider {
    static var previews: some View {
        LinhaDivider()
    }
}
