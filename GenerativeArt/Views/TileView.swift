//
//  TileView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct TileView: View {
    
    let baseHue: Double
    let secondaryHueOffset: Double
    let colourOne: Color
    let colourTwo: Color

    // MARK: Stored properties
    
    // Decide on colours
    let flipForColor = Coin.heads
    
    // Decisions for rest of the design
    let flipOne = Coin.flip()
    let flipTwo = Coin.flip()
    let flipThree = Coin.flip()
    
    // MARK: Computed properties
    var markerOne: Color {
        return flipForColor == .heads ? colourOne : colourTwo
    }
    var markerTwo: Color {
        return flipForColor == .heads ? colourTwo : colourOne
    }
    
    // Work out remaining fill color
    var remainingTriangleFillColor: Color {
        
        if flipThree == .heads {
            return markerTwo
        } else {
            return .clear
        }
        
    }
    
    var body: some View {
        HStack {
            
            if flipOne == .heads {
                
                // Top left to bottom right
                ZStack {
                    
                    TriangleTopRight()
                        .stroke(.black)
                        .fill(flipTwo == .heads ? markerOne : remainingTriangleFillColor)
                    
                    TriangleBottomLeft()
                        .stroke(.black)
                        .fill(flipTwo == .tails ? markerOne : remainingTriangleFillColor)
                    
                }
                
            } else {
                
                // Top right to bottom left
                ZStack {
                    
                    TriangleTopLeft()
                        .stroke(.black)
                        .fill(flipTwo == .heads ? markerOne : remainingTriangleFillColor)
                    
                    TriangleBottomRight()
                        .stroke(.black)
                        .fill(flipTwo == .tails ? markerOne : remainingTriangleFillColor)
                    
                }
                
            }
            
        }
        .aspectRatio(1.0, contentMode: .fit)
        
    }
    
    // MARK: Initializers
    init(
        baseHue: Double,
        secondaryHueOffset: Double = 30.0,
        colourOne: Color = .blue,
        colourTwo: Color = .red
    ) {
        self.baseHue = baseHue
        self.secondaryHueOffset = secondaryHueOffset
        self.colourOne = Color(
            hue: baseHue / 360.0,
            saturation: 0.8,
            brightness: 0.9
        )
        self.colourTwo = Color(
            hue: (baseHue + secondaryHueOffset).remainder(dividingBy: 360.0) / 360.0,
            saturation: 0.8,
            brightness: 0.9
        )
    }
}


#Preview {
    TileView(
        baseHue: 60.0,
        secondaryHueOffset: 30.0
    )
    .padding()
}
