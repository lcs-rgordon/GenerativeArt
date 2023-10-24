//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    
    // MARK: Stored properties
    @State var selectedColumns = 3.0
    
    // MARK: Computed properties
    var columnsRangeEnd: Int {
        return Int(selectedColumns) + 1
    }
    
    var body: some View {
        VStack {
            
            Spacer()

            Grid(horizontalSpacing: 0) {
                GridRow {
                    ForEach(1..<columnsRangeEnd, id: \.self) { _ in
                        TileView()
                    }
                }
            }
            .padding()
            
            Spacer()
            
            Divider()
                        
            VStack(spacing: 0) {
                Text("Columns")
                    .bold()
                HStack {
                    Text("1")
                    Slider(value: $selectedColumns, in: 1...10, step: 1.0)
                    Text("10")
                }
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    MosaicView()
}
