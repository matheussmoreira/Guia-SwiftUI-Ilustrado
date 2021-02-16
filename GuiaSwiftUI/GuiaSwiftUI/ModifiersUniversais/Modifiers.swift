//
//  Modifiers.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 16/02/21.
//

import SwiftUI

struct Modifiers_Previews : PreviewProvider {
    static var previews: some View {
        Modifiers.Padding()
        Modifiers.PaddingNumerico()
    }
}

struct Modifiers {
    struct Padding : View {
        var body: some View {
            VStack {
                VStack {
                    Text("Sem padding")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle().foregroundColor(.green).frame(width: 40, height: 40)
                        .border(Color.red)
                }
                
                VStack {
                    Text(".padding(.top)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    
                    Circle().foregroundColor(.green).frame(width: 40, height: 40)
                        .padding(.top)
                        .border(Color.red)
                }
                
                VStack {
                    Text(".padding(.leading)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle().foregroundColor(.green).frame(width: 40, height: 40)
                        .padding(.leading)
                        .border(Color.red)
                }
                
                VStack {
                    Text(".padding(.bottom)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 40, height: 40)
                        .padding(.bottom)
                        .border(Color.red)
                }
                
                VStack {
                    Text(".padding(.trailing)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle().foregroundColor(.green).frame(width: 50, height: 50)
                        .padding(.trailing)
                        .border(Color.red)
                    
                }
                
                VStack {
                    Text(".padding()")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Circle().foregroundColor(.green).frame(width: 50, height: 50)
                        .padding()
                        .border(Color.red)
                }
                
            }
        }
    }
    
    struct PaddingNumerico : View {
        var body: some View {
            VStack {
                Text(".leading, 15")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.leading, 15)
                    .background(Color.black)
                
                Text(".leading, 70")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.leading, 70)
                    .background(Color.black)
                    .offset(y: 15)
            }
        }
    }
}
