//
//  Label.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 27/07/21.
//

import SwiftUI

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        MyLabel.Exemplos()
    }
}

struct MyLabel {
    struct Exemplos: View {
        var body: some View {
            VStack {
                Label("Sino", systemImage: "bell.fill")
                
                Label {
                    Text("Pickles")
                } icon: {
                    Capsule()
                        .fill(Color.green)
                        .frame(width: 54, height: 24)
                }
            }.font(.title)
        }
    }
}


