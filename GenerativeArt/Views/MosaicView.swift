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
            
            TileView()
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
