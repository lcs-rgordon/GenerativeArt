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

struct TriangleTopLeft: Shape {
    
    // On iOS, the co-ordinate system is flipped
    // Origin at upper left and positive values on vertical axis extend downward
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))      // top-left corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))   // top-right corner
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))   // bottom-left corner
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))   // top-left corner
        
        return path
    }
    
}

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
