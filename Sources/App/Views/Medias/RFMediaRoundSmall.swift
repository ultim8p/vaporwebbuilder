//
//  RFMediaRoundSmall.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RFMediaRoundSmall: RWImg {
    convenience init(in element: RWElement, picUrl: String?) {
        self.init(in: element, src: picUrl)
        
        let size: Double = 3.0
        
        self.style.setSize(RWUnit.em(size))
        self.style.background.color = RWColor.rfPrimary2
        self.style.setBorderRadiusEm(size * 0.5)
        
        self.style.setMargins(top: RWUnit.pix(5.0), right: RWUnit.pix(5.0), bottom: RWUnit.pix(5.0), left: RWUnit.pix(5.0))
        
    }
}


