//
//  MyImage.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 28/01/21.
//

import SwiftUI

struct MyImage_Previews : PreviewProvider {
    static var previews : some View {
        MyImage.ImageScale()
    }
}

struct MyImage {
    struct Normal : View {
        var body: some View {
            Image("doguinho")
        }
    }
    
    struct Resizable : View {
        var body: some View {
            Image("doguinho")
                .resizable()
        }
    }
    
    struct ResizingMode : View {
        var body: some View {
            VStack {
                Image("estrela")
                    .resizable(resizingMode: .stretch)
                    .padding()
                
                Image("estrela")
                    .resizable(resizingMode: .tile)
                    .padding()
            }
        }
    }
    
    struct Fit : View {
        var body: some View {
            Image("doguinho")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .border(Color.blue)
        }
    }
    
    struct FitFrame : View {
        var body: some View {
            Image("doguinho")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .border(Color.blue)
        }
    }
    
    struct Fill : View {
        var body: some View {
            Image("doguinho")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .border(Color.red)
        }
    }
    
    struct FillFrame : View {
        var body: some View {
            Image("doguinho")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .border(Color.red)
        }
    }
    
    struct Icones : View {
        var body: some View {
            VStack {
                Text("Alguns exemplos")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                HStack {
                    Image(systemName: "thermometer.sun")
                        .font(.largeTitle)
                    
                    Image(systemName: "thermometer.sun.fill")
                        .foregroundColor(.blue)
                        .font(.largeTitle)
                    
                    Image(systemName: "thermometer.sun.fill")
                        .renderingMode(.original)
                        .font(.largeTitle)
                } .padding()
            }
        }
    }
    
    struct Interpolacao : View {
        var body: some View {
            VStack {
                Image("estrela")
                    .resizable()
                    .interpolation(.none)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                
                Image("estrela")
                    .resizable()
                    .interpolation(.high)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
            }
        }
    }
    
    struct Antialiasing : View {
        var body: some View {
            Image("barco")
                .antialiased(true)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 600)
        }
    }
    
    struct RenderingMode : View {
        var body: some View {
            VStack {
                Image(systemName: "timer")
                    .renderingMode(.original)
                    .foregroundColor(.blue)
                    .font(.system(size: 70))
                    .padding()
                Image(systemName: "timer")
                    .renderingMode(.template)
                    .foregroundColor(.blue)
                    .font(.system(size: 70))
                    .padding()
            }
        }
    }
    
    struct ImageScale : View {
        var body: some View {
            VStack {
                HStack {
                    Image(systemName: "trash.circle.fill")
                        .imageScale(.small)
                    Text("Small")
                }.padding()
                HStack {
                    Image(systemName: "trash.circle.fill")
                        .imageScale(.medium)
                    Text("Medium")
                }.padding()
                HStack {
                    Image(systemName: "trash.circle.fill")
                        .imageScale(.large)
                    Text("Large")
                }.padding()
            }
            
        }
    }
    
}
