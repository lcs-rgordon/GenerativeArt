//
//  TileView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct TileView: View {

    // MARK: Stored properties
    
    // Decide on colours
    let flipForColor = Coin.heads
    let colourOne = Color.red
    let colourTwo = Color.blue
    
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
}


#Preview {
    TileView()
        .padding()
}
