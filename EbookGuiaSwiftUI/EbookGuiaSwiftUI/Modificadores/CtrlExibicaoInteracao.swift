//
//  CtrlExibicaoInteracao.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 12/02/23.
//

import SwiftUI

struct CtrlExibicaoInteracao_Previews: PreviewProvider {
    static var previews: some View {
        CtrlExibicaoInteracao.IgnorandoSafeArea()
    }
}

struct CtrlExibicaoInteracao {
    
    struct RespeitandoSafeArea: View {
        var body: some View {
            ZStack {
                Color.orange
                
                Text("Respeitando a safe area")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
            }
        }
    } // Respeitando a safe area
    
    struct IgnorandoSafeArea: View {
        var body: some View {
            ZStack {
                Color.orange
                    .ignoresSafeArea()
                
                Text("Ignorando a safe area")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
            }
        }
    } // Ignorando a safe area
}
