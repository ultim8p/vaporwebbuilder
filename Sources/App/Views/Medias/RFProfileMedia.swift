//
//  RFUserMedia.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RFProfileMedia: RWImg {
    convenience init(in element: RWElement, mediaUrl: String?) {
        self.init(in: element, src: mediaUrl)
        
        let size: Double = 15.0
        
        self.style.setSize(RWUnit.em(size))
        self.style.background.color = RWColor.rfPrimary2
        self.style.setBorderRadiusEm(size * 0.5)
        
    }
}

