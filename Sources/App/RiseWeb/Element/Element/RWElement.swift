//
//  RWElement.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-25.
//
//

import Foundation


class RWElement: RWPrimitive {
    
    var tag: RWElementTag?
    var elements: [RWElement] = []
    var style = RWStyle()
    var attrs: [RWAttr] = []
    var text: String?
    
    
    init() {
        
    }
    
    convenience init(in element: RWElement, tag: RWElementTag) {
        self.init()
        self.tag = tag
        element.elements.append(self)
    }
    convenience init(in element: RWElement) {
        self.init(in: element, tag: .simpleString)
    }
    
    var className: String {
        let thisType = type(of: self)
        return String(describing: thisType)
    }
    
    func buildPrimitive() -> String? {
        var htmlString = ""
        self.prepareBuild()
        /// Prefix
        if let prefix = self.buildPrefix() {
            htmlString.append(prefix)
        }
        
        /// After tag prim
        if let afterTagPrim = self.afterTagPrimitive() {
            htmlString.append(afterTagPrim)
        }
        
        /// Vals
        if let textVal = self.text {
            htmlString.append(textVal)
        }
        
        /// Elements
        if let elementsHTML = self.elements.buildPrimitive() {
            htmlString.append(elementsHTML)
        }
        
        
        
        /// Suffix
        if let suffix = self.buildSuffix() {
            htmlString.append(suffix)
        }
        
        if htmlString.count > 0 { return htmlString }
        
        return nil
    }
    
    func afterTagPrimitive() -> String? {
        return nil
    }
    
    func classStyle() -> String? {
        var stylesString = ""
        
        if let styleProps = self.style.buildPrimitive() {
            stylesString.append(".\(self.className){ \(styleProps) }")
        }
        
        if let childStyles = self.elements.classStyles() {
            stylesString.append(childStyles)
        }
        
        if stylesString.count > 0 { return stylesString }
        return nil
    }
    
}

extension RWElement {
    static func text(in element: RWElement, text: String) -> RWElement {
        let ele = RWElement(in: element)
        ele.tag = .simpleString
        ele.text = text
        return ele
    }
}



extension Array where Element: RWElement {
    /// Returns an array contatining all the element's styles
    /// Must make sure buildPrimitive() is called before calling this method
    func classStyles() -> String? {
        var styles: String = ""
        for ele in self {
            if let style = ele.classStyle() {
                styles.append(style)
            }
        }
        if styles.count > 0 { return styles }
        return nil
    }
}

extension Array where Element: RWPrimitive {
    func buildPrimitive() -> String? {
        var htmlString = ""
        for prim in self {
            if let html = prim.buildPrimitive() {
                htmlString.append(html)
            }
        }
        if htmlString.count > 0 { return htmlString }
        return nil
    }
}
