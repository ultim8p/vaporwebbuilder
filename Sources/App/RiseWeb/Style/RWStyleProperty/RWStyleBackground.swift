//
//  RWStyleBackground.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation

class RWStyleBackground: RWPrimitive {
    
    var color: RWColor?
    var backgroundImage: RWValUrl?
    
    func buildPrimitive() -> String? {
        var primString = ""
        if let backgroundImage = self.backgroundImage?.buildPrimitive() {
            primString.append("background-image:\(backgroundImage);")
        }
        if let backgColor = self.color?.buildPrimitive(){
            primString.append("background-color:\(backgColor);")
        }
        if primString.count > 0 { return primString }
        return nil
    }
}

