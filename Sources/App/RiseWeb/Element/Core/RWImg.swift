//
//  RWImg.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RWImg: RWElement {
    
    convenience init(in element: RWElement, src: String?) {
        self.init(in: element, tag: .img)
        
        self.addSrc(src)
        
    }
    
}
