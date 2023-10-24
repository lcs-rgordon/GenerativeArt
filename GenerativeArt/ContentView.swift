//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

enum Coin: Int {
    case heads = 1
    case tails = 2
    
    static func flip() -> Coin {
        return Bool.random() == true ? .heads : .tails
    }
}

struct ContentView: View {
    
    // MARK: Stored properties
    let decisionOne = Coin.flip()
    let colourOne = Color.red
    let colourTwo = Color.blue
    
    // MARK: Computed properties
    var markerOne: Color {
        return decisionOne == .heads ? colourOne : colourTwo
    }
    var markerTwo: Color {
        return decisionOne == .tails ? colourTwo : colourOne
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
