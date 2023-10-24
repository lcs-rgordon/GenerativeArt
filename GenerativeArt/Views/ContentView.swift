//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // Decide on colours
    let colourDecision = Coin.flip()
    let colourOne = Color.red
    let colourTwo = Color.blue
    
    // Decisions for rest of the design
    let flipOne = Coin.tails
    let flipTwo = Coin.flip()
    let flipThree = Coin.flip()
    
    // MARK: Computed properties
    var markerOne: Color {
        return colourDecision == .heads ? colourOne : colourTwo
    }
    var markerTwo: Color {
        return colourDecision == .tails ? colourTwo : colourOne
    }
    
    var body: some View {
        HStack {
            
            if flipOne == .heads {

                ZStack {
                    
                    TriangleBottomRight()
                        .stroke(.black)
                        .fill(flipTwo == .tails ? markerOne : .clear)

                    TriangleTopLeft()
                        .stroke(.black)
                        .fill(flipTwo == .heads ? markerOne : .clear)
                    
                }
                .frame(width: 100, height: 100)

            } else {
                
                ZStack {
                    
                    TriangleTopRight()
                        .stroke(.black)
                        .fill(flipTwo == .heads ? markerOne : .clear)

                    TriangleBottomLeft()
                        .stroke(.black)
                        .fill(flipTwo == .tails ? markerOne : .clear)

                }
                .frame(width: 100, height: 100)
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
