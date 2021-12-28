//
//  RWElement+Flex.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

extension RWElement {
    
    func setFlex(direction: RWStyleLayoutFlowDirection?, wrap: RWStyleLayoutLineWrap?, hAlign: RWStyleLayoutContentHorizontalAlignment?, vAlign: RWStyleLayoutContentVerticalAlignment?) {
        self.style.box.display = .flex
        self.style.layout.flowDirection = direction
        self.style.layout.lineWrap = wrap
        self.style.layout.contentVerticalAlignment = vAlign
        self.style.layout.contentHorizontalAlignment = hAlign
    }
    
}
