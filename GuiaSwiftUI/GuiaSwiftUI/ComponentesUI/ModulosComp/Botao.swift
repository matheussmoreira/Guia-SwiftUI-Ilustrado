//
//  Botoes.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 29/01/21.
//

import SwiftUI

struct Botao_Previews : PreviewProvider {
    static var previews: some View {
        //Botao.Alerta()
        Botao.Alerta2()
    }
}

struct Botao {
    struct ExemploInicial : View {
        var body: some View {
            VStack {
                Button("Apenas um texto",
                       action: { print("Olá") }
                ).padding()
                
                Button(action: { print("Olá") }) {
                    // Corpo do botão
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200.0, height: 40.0)
                            .foregroundColor(.black)
                        
                        Text("Botão retangular")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.padding()
                
                Button(action: { print("Olá") }) {
                    // Corpo do botão
                    Image(systemName: "trash.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }.padding()
            }
        }
    }
    
    struct Sheet : View {
        @Binding var mostrarSheet : Bool
        
        var body: some View {
            VStack {
                Text("Tela em modo sheet!").font(.title).padding()
                Button("Voltar",action: { mostrarSheet.toggle() })
            }
        }
    }
    
    struct FullScreen : View {
        @Binding var fullScreen : Bool
        var body: some View {
            VStack {
                Text("Tela em modo full screen!").font(.title).padding()
                Button("Voltar", action: { fullScreen.toggle() })
            }
        }
    }
    
    struct Alerta : View {
        @State private var mostrarAlert = false
        
        var body: some View {
            Button(action: { mostrarAlert.toggle()}) {
                // Corpo do botão
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250.0, height: 40.0)
                        .foregroundColor(.black)
                    
                    Text("Clique para mostrar o Alert")
                        .foregroundColor(.white)
                        .bold()
                }
            }.alert(isPresented: $mostrarAlert) {
                
                Alert(title: Text("Localização atual indisponível!"),
                      message: Text("Infelizmente, não foi possível determinar sua localização atual."),
                      dismissButton: .default(Text("OK")))
            }
        }
    }

    struct Alerta2 : View {
        @State private var mostrarAlert = false
        
        var body: some View {
            Button(action: { mostrarAlert.toggle()}) {
                // Corpo do botão
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250.0, height: 40.0)
                        .foregroundColor(.black)
                    
                    Text("Clique para mostrar o Alert")
                        .foregroundColor(.white)
                        .bold()
                }
            }.alert(isPresented: $mostrarAlert) {
                
                Alert(title: Text("Tem certeza que deseja deletar?"),
                      message: Text("Após fazer isto, sua ação não poderá ser desfeita!"),
                      primaryButton: .cancel(Text("Cancelar")),
                      secondaryButton: .destructive(Text("Deletar")){
                        print("Deleção realizada!")
                      })
            }
        }
    }
}
