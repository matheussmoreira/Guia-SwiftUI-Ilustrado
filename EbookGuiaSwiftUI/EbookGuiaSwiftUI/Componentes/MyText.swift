//
//  MyText.swift
//  EbookGuiaSwiftUI
//
//  Created by Matheus S. Moreira on 07/02/23.
//

import SwiftUI

struct MyText_Previews: PreviewProvider {
    static var previews: some View {
        MyText.FontesSistema()
    }
}

struct MyText {
    struct Tamanhos : View {
        var body: some View {
            VStack {
                Text("Large Title")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                Group {
                    Text("Title")
                        .font(.title)
                    Text("Title 2")
                        .font(.title2)
                    Text("Title 3\n")
                        .font(.title3)
                }
                
                Group {
                    Text("Headline")
                        .font(.headline)
                    
                    Text("Subheadline\n")
                        .font(.subheadline)
                }
                
                Text("Body")
                    .font(.body)
                    .padding(.bottom)
                
                Text("Callout")
                    .font(.callout)
                    .padding(.bottom)
                
                Group {
                    Text("Caption")
                        .font(.caption)
                    Text("Caption 2\n")
                        .font(.caption2)
                }
                
                Group {
                    Text("Footnote")
                        .font(.footnote)
                }
            }
        }
    }
    
    struct Pesos : View {
        var body : some View {
            VStack {
                Text("Black\n")
                    .fontWeight(.black)
                Text("Heavy\n")
                    .fontWeight(.heavy)
                Text("Bold\n")
                    .fontWeight(.bold)
                Text("Semibold\n")
                    .fontWeight(.semibold)
                Text("Medium\n")
                    .fontWeight(.medium)
                Text("Regular\n")
                    .fontWeight(.regular)
                Text("Light\n")
                    .fontWeight(.light)
                Text("Thin\n")
                    .fontWeight(.thin)
                Text("Ultra light")
                    .fontWeight(.ultraLight)
                
            }.font(.title)
        }
    }
    
    struct FontesSistema : View {
        var body: some View {
            VStack(spacing: 50) {
                Text("Fonte com tamanho 20")
                    .font(.system(size: 20))
                
                Text("20, peso Bold")
                    .font(.system(size: 20, weight: .bold))
                
                Text("Callout, design Serif e peso Medium")
                    .font(.system(.callout, design: .serif, weight: .medium))
                
                // Textos com design rounded e monospaced
                
                Text("20, design Rounded")
                    .font(.system(size: 20, design: .rounded))
                
                Text("Title3, design Monospaced")
                    .font(.system(.title3, design: .monospaced))
            }
        }
    }
}
