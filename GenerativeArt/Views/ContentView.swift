//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    let colourDecision = Coin.flip()
    let colourOne = Color.red
    let colourTwo = Color.blue
    
    // MARK: Computed properties
    var markerOne: Color {
        return colourDecision == .heads ? colourOne : colourTwo
    }
    var markerTwo: Color {
        return colourDecision == .tails ? colourTwo : colourOne
    }
    
    var body: some View {
        HStack {
            ZStack {
                
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(.blue)
                
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(.red)
                
            }
            .frame(width: 100, height: 100)
            
            ZStack {
                
                TriangleTopRight()
                    .stroke(.black)
                    .fill(.purple)
                
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(.yellow)
                
            }
            .frame(width: 100, height: 100)
            
        }
        
    }
}

#Preview {
    ContentView()
}
