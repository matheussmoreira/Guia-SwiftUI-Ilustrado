//
//  Sobre.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 25/02/21.
//

import SwiftUI

struct PaginaSobre: View {
    var corPagina: Color
    
    var body: some View {
        VStack {
            TituloEmBarra(titulo: "Sobre o app", corBarra: corPagina)
            
            //Spacer()
            Image(systemName: "link").font(.title)
            
            Text("Este app serve apenas como catálogo digital e navegável do conteúdo do e-book Guia SwiftUI Ilustrado.\n\n Para mais informações, consulte o \nGitHub do projeto no link abaixo:").multilineTextAlignment(.center).padding()
            
            Link(destination: URL(string: "https://github.com/matheussmoreira/Guia-SwiftUI-Ilustrado")!){
                Text("Visitar página")
            }
            
            Spacer()
        }
    }
}

struct Sobre_Previews: PreviewProvider {
    static var previews: some View {
        PaginaSobre(corPagina: .red)
    }
}
