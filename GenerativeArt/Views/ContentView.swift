//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

// Implementation based on rules given here:
//
// https://ics4u-2023-24.russellgordon.ca/images/introduction-to-generative-art/

struct ContentView: View {

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
                .frame(width: 100, height: 100)

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
                .frame(width: 100, height: 100)
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
