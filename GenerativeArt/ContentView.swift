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
    
    // MARK: Computed properties
    var selectedColor: Color {
        return coinFlipOne == 1 ? .red : .blue
    }
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
