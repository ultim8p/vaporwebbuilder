//
//  RFTextHeadline.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RFTextHeadline: RWParagraph {
    
    convenience init(in element: RWElement, head: String?) {
        self.init(in: element, text: head)
        
        self.style.font.weight = .w900
        self.style.font.size = RWUnit.pix(20)
    }
    
}
