//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    let coinFlipOne = Int.random(in: 1...2)
    let colourOne = Color.red
    let colourTwo = Color.blue
    
    // MARK: Computed properties
    var markerOne: Color {
        return coinFlipOne == 1 ? colourOne : colourTwo
    }
    var markerTwo: Color {
        return coinFlipOne == 1 ? colourTwo : colourOne
    }
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(.clear)
                .border(.black)
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
