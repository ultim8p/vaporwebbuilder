//
//  RWDocument.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-25.
//
//

import Foundation

class RWPage: RWElement {
    
    convenience init(lang: String?) {
        self.init()
        self.tag = .html
        
    }
    
    override func afterTagPrimitive() -> String? {
        var primString = ""
        if let styles = self.elements.classStyles() {
            primString.append("<style>")
            for style in styles {
                primString.append(style)
            }
            primString.append("</style>")
        }
        if primString.count > 0 { return primString }
        return nil
    }
    
    override func buildPrimitive() -> String? {
        
        let elesString = super.buildPrimitive() ?? ""
        
        var primString = "<!DOCTYPE html>"
        
        primString.append(elesString)
        
        return primString
    }
    
    
    
}
