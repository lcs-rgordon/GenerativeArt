//
//  ContentView.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import SwiftUI

struct TriangleBottomLeft: Shape {
    
    // On iOS, the co-ordinate system is flipped
    // Origin at upper left and positive values on vertical axis extend downward
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))      // top-left corner
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))   // bottom-left corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))   // bottom-right corner
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))   // top-left corner
        
        return path
    }
}

struct TriangleTopRight: Shape {
    
    // On iOS, the co-ordinate system is flipped
    // Origin at upper left and positive values on vertical axis extend downward
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))      // top-right corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))   // bottom-right corner
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))   // top-left corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))   // top-right corner
        
        return path
    }
}

struct TriangleBottomRight: Shape {

    // On iOS, the co-ordinate system is flipped
    // Origin at upper left and positive values on vertical axis extend downward
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.maxY))      // bottom-right corner
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))   // bottom-left corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))   // top-right corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))   // bottom-right corner
        
        return path
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
        ZStack {
            
//            TriangleTopRight()
//                .stroke(.black)
//                .fill(.purple)
//            
//            TriangleBottomLeft()
//                .stroke(.black)
//                .fill(.yellow)
            
            TriangleBottomRight()
                .stroke(
                    .purple,
                    style: StrokeStyle(
                        lineWidth: 5,
                        lineCap: CGLineCap.square,
                        lineJoin: CGLineJoin.miter
                    )
                )
                .fill(.blue)

        }
        .frame(width: 100, height: 100)
        .padding()
    }
}

#Preview {
    ContentView()
}
