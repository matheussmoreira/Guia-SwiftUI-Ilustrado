//
//  MyLink.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 15/10/21.
//

import SwiftUI

struct MyLink_Previews: PreviewProvider {
    static var previews: some View {
        MyLink()
    }
}

struct MyLink: View {
    var body: some View {
        VStack {
            Link("Apple - Página Inicial",
                 destination: URL(string: "https://www.apple.com")!)
                .font(.title)
                .foregroundColor(.gray)
                .padding()
            
            Link(destination: URL(string: "https://www.apple.com")!) {
                Image(systemName: "link")
                    .font(.largeTitle)
            }.padding()
        }
    }
    
}
