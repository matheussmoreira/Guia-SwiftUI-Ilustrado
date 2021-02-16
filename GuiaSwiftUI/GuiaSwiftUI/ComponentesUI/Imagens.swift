//
//  Imagens.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 28/01/21.
//

import SwiftUI

struct Imagens_Previews : PreviewProvider {
    static var previews : some View {
        //Imagens.Normal()
        //Imagens.Resizable()
        //Imagens.Fit()
        //Imagens.Fill()
        Imagens.Icones()
    }
}

struct Imagens {
    struct Normal : View {
        var body: some View {
            Image("doguinho")
        }
    }
    
    struct Resizable : View {
        var body: some View {
            VStack{
                Text("Resizable")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Image("doguinho")
                    .resizable()
            }

        }
    }
    
    struct Fit : View {
        var body: some View {
            
            VStack {
                Text("Fit")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Image("doguinho")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    
    struct Fill : View {
        var body: some View {
            VStack {
                Text("Fill")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Image("doguinho")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
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
                
                /*
                HStack {
                    Image(systemName: "thermometer.sun.fill")
                        .renderingMode(.original)
                        .font(.largeTitle)
                    
                    Image(systemName: "staroflife.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }.padding()
                */
            }
        }
    }
    
}
