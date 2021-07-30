//
//  PaginaLazyGrids.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 30/07/21.
//

import SwiftUI

struct PaginaLazyGrids: View {
    var corPagina: Color
    @State private var showVGrid = false
    @State private var showHGrid = false
    @State private var showVGridAlignment = false
    @State private var showHGridAlignment = false
    @State private var showVGridSpacing = false
    @State private var showHGridSpacing = false
    
    var body: some View {
        ZStack {
            VStack {
                TituloEmBarra(titulo: "Lazy grids", corBarra: corPagina)
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    Button(action: { showVGrid.toggle() }) {
                        BotaoRetangular(nome: "Grid vertical")
                    }
                    .sheet(isPresented: $showVGrid) { LazyGrids.VGrid() }
                    
                    Button(action: { showHGrid.toggle() }) {
                        BotaoRetangular(nome: "Grid horizontal")
                    }
                    .sheet(isPresented: $showHGrid) { LazyGrids.HGrid() }
                    
                    Button(action: { showVGridAlignment.toggle() }) {
                        BotaoRetangular(nome: "Alinhamento em grid vertical")
                    }
                    .sheet(isPresented: $showVGridAlignment) { LazyGrids.VGridAlignment() }
                    
                    Button(action: { showHGridAlignment.toggle() }) {
                        BotaoRetangular(nome: "Alinhamento em grid horizontal")
                    }
                    .sheet(isPresented: $showHGridAlignment) { LazyGrids.HGridAlignment() }
                    
                    Button(action: { showVGridSpacing.toggle() }) {
                        BotaoRetangular(nome: "Espaçamento em grid vertical")
                    }
                    .sheet(isPresented: $showVGridSpacing) { LazyGrids.VGridSpacing() }
                    
                    Button(action: { showHGridSpacing.toggle() }) {
                        BotaoRetangular(nome: "Espaçamento em grid horizontal")
                    }
                    .sheet(isPresented: $showHGridSpacing) { LazyGrids.HGridSpacing() }
                    
                }.padding()
            }.offset(y: 60)
        }
    }
}

struct PaginaLazyGrids_Previews: PreviewProvider {
    static var previews: some View {
        PaginaLazyGrids(corPagina: .orange)
    }
}
