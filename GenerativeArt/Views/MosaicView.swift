//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    
    var body: some View {
        VStack {
            
            Spacer()

            Grid(horizontalSpacing: 0) {
                GridRow {
                    ForEach(1..<4) { _ in
                        TileView()
                    }
                }
            }
            .padding()
            
            Spacer()
            
            Divider()
            
            Spacer()
            
            Text("Controls go here")
            
            Spacer()
        }
    }
}

#Preview {
    MosaicView()
}
