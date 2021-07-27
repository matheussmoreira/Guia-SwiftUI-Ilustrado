//
//  LazyGrids.swift
//  GuiaSwiftUI
//
//  Created by Matheus S. Moreira on 27/07/21.
//

import SwiftUI

struct LazyGrids_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrids.VGrid()
//        LazyGrids.HGrid()
    }
}

struct LazyGrids {
    struct VGrid : View {
        let cols: [GridItem] =
            Array(repeating: GridItem(.flexible()), count: 5)
        
        var body: some View {
            LazyVGrid(columns: cols, alignment: .center, spacing: 15) {
                ForEach((1...20), id: \.self) {
                    Text("\($0)")
                        .font(.title)
                }
            }
        } // body
    }
    
    struct HGrid : View {
        var linhas: [GridItem] =
            Array(repeating: GridItem(.fixed(30)), count: 5)
        
        var body: some View {
            LazyHGrid(rows: linhas, alignment: .center, spacing: 15) {
                ForEach((1...20), id: \.self) {
                    Text("\($0)")
                        .font(.title)
                }
            }
        } // body
    }
}


