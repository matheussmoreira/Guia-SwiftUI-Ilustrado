//
//  MyDivider.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 16/02/21.
//

import SwiftUI

struct MyDivider_Previews : PreviewProvider {
    static var previews: some View {
        MyDivider.ExemploUnico()
    }
}

struct MyDivider {
    struct ExemploUnico : View {
        var body: some View {
            VStack {
                VStack {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                        .padding()
                    Divider()
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                        .padding()
                }.border(Color.blue).padding()
                
                HStack {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.orange)
                        .padding()
                    
                    Divider()
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.orange)
                        .padding()
                    
                }.border(Color.orange).padding()
            }
        }
    }
}
