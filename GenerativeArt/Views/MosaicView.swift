//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    
    @State var selectedSize = 100.0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            TileView(size: selectedSize)
            
            Spacer()
            
            Divider()
            
            Spacer()
            
            Slider(value: $selectedSize, in: 10...200, step: 10)
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    MosaicView()
}
