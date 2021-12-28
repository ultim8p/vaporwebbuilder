//
//  RWAttrSrc.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RWAttrSrc: RWAttr {
    
    var src: String?
    
    convenience init(in element: RWElement, src: String?) {
        self.init(in: element, type: .src)
        
        self.src = src
    }
    
    override func buildVal() -> String? {
        return src
    }
    
}

extension RWElement {
    func addSrc(_ source: String?) {
        _ = RWAttrSrc(in: self, src: source)
    }
}
