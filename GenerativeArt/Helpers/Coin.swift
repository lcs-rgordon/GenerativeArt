//
//  Coin.swift
//  GenerativeArt
//
//  Created by Russell Gordon on 2023-10-24.
//

import Foundation

enum Coin: Int {
    case heads = 1
    case tails = 2
    
    static func flip() -> Coin {
        return Bool.random() == true ? .heads : .tails
    }
}
