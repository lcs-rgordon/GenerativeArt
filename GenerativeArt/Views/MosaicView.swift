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
    @State var selectedRows = 3.0
    @State var selectedHue = 0.0
    @State var selectedOffset = 45.0

    // MARK: Computed properties
    var columnsRangeEnd: Int {
        return Int(selectedColumns) + 1
    }
    var rowsRangeEnd: Int {
        return Int(selectedRows) + 1
    }
    var body: some View {
        VStack {
            
            Spacer()

            Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                ForEach(1..<rowsRangeEnd, id: \.self) { _ in
                    GridRow {
                        ForEach(1..<columnsRangeEnd, id: \.self) { _ in
                            TileView(
                                baseHue: selectedHue,
                                secondaryHueOffset: selectedOffset
                            )
                        }
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
            
            VStack(spacing: 0) {
                Text("Rows")
                    .bold()
                HStack {
                    Text("1")
                    Slider(value: $selectedRows, in: 1...10, step: 1.0)
                    Text("10")
                }
                .padding()
            }
            .padding()

            VStack(spacing: 0) {
                Text("Base Hue")
                    .bold()
                HStack {
                    Text("0°")
                    Slider(value: $selectedHue, in: 0...360, step: 1.0)
                    Text("360°")
                }
                .padding()
            }
            .padding()

            VStack(spacing: 0) {
                Text("Offset")
                    .bold()
                HStack {
                    Text("0°")
                    Slider(value: $selectedOffset, in: 0...360, step: 1.0)
                    Text("360°")
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
