//
//  RFCardCont.swift
//  App
//
//  Created by Guerson on 2018-10-27.
//

import Foundation

class RFContCard: RWDiv {
    
    var ownerView: RFContHeader!
    var photoImg: RWImg!
    
    convenience init(in element: RWElement, user: Bool) {
        self.init(in: element)
        
        self.setFlex(direction: .column, wrap: .noWrap, hAlign: .center, vAlign: .center)
        
        self.style.setWidth(RWUnit.em(30.0))
        self.style.setBorderRadiusEm(topLeft: 1.0, topRight: 1.0, bottomLeft: 1.0, bottomRight: 1.0)
        self.style.setShadowPix(x: 0.0, y: 0.0, blur: 20.0, color: RWColor.rfShadow)
        self.style.cursor.type = RWStyleCursorType.grab
        // OwnerView
        ownerView = RFContHeader(in: self, title: "risefit added a profile cover")
        self.addHref("https://youtube.com")
        
        // PhotoImage
        photoImg = RWImg(in: self, src: "https://www.hellomagazine.com/imagenes/healthandbeauty/health-and-fitness/2018010345124/best-free-gym-deals-of-new-year/0-228-120/gym=deals-t.jpg")
        photoImg.style.setSize(w: RWUnit.perc(100.0), h: RWUnit.em(15.0))
        photoImg.style.content.objectFit = .cover
        photoImg.style.setBorderRadiusEm(topLeft: nil, topRight: nil, bottomLeft: 1.0, bottomRight: 1.0)
        
        
        
        
    }
    
}
