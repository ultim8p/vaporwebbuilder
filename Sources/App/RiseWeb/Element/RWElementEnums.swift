//
//  RWElementEnums.swift
//  RiseFitSite
//
//  Created by Guerson Perez Yañez on 2017-06-25.
//
//

import Foundation


public enum RWElementKind: String {
    case void = "void"
    case normal = "normal"
    case simpleString = "simpleString"
}
public enum RWElementTag: String {
    case paragraph = "p"
    case hyperlink = "a"
    case title = "title"
    case html = "html"
    case style = "style"
    case body = "body"
    case head = "head"
    
    case h1 = "h1"
    case h2 = "h2"
    case h3 = "h3"
    case h4 = "h4"
    case h5 = "h5"
    case h6 = "h6"
    
    case div = "div"
    
    case button = "button"
    
    case simpleString = "simpleString"
    
    
    case img = "img"
    case span = "span"
    case figure = "figure"
    case i = "i"
    case article = "article"
    case unorderedList = "ul"
    case listItem = "li"
    case descriptionList = "dl"
    case descriptionDefinition = "dd"
    case descriptionTerm = "dt"
    case table = "table"
    case tableRow = "tr"
    case tableCell = "td"
    case tableHeader = "th"
    case footer = "footer"
    case strong = "strong"
    case lineBreak = "br"
    case marked = "mark"
    case code = "code"
    case menu = "menu"
    case orderedList = "ol"
    case section = "section"
    case navBar = "nav"
    case aside = "aside"
    case input = "input"
    case form = "form"
    case label = "label"
    case header = "header"
    case main = "main"
    case details = "details"
    case summary = "summary"
    case blockQuote = "blockquote"
    
    //--- void Elements ---
    case area = "area"
    case base = "base"
    
    case col = "col"
    case embed = "embed"
    case hr = "hr"
    case keygen = "keygen"
    case link = "link"
    case meta = "meta"
    case param = "param"
    case source = "source"
    case track = "track"
    case wbr = "wbr"
}


