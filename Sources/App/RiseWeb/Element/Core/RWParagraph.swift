//
//  RWParagraph.swift
//  App
//
//  Created by Guerson on 2018-10-26.
//

import Foundation

class RWParagraph: RWElement {
    
    convenience init(in element: RWElement, text: String?) {
        self.init(in: element, tag: .paragraph)
        self.text = text
    }
    
}

