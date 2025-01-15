//
//  CabanaSizeTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 09/01/25.
//

import Foundation
import UIKit

enum CabanaSizeTableViewCellType{
    case CabanaSizeHead
    case CabanaSizeLengthBottom
    case CabanaSizeWidthBottom
}
class CabanaSizeTableViewCellModel{
    
    var identifier: String = ""
    var cellType: CabanaSizeTableViewCellType
    
    init(cellType: CabanaSizeTableViewCellType) {
       
        self.cellType = cellType
        switch cellType {
        case .CabanaSizeHead:
            self.identifier = "cell.cabana.size.head"
        case .CabanaSizeLengthBottom,.CabanaSizeWidthBottom:
            self.identifier = "cell.cabana.size.bottom"
     
        }
    }
    func header()-> String{
        if cellType == .CabanaSizeHead{
            return "CABANA SIZE"
        }
        return ""
    }
    func subTitle()-> String{
        if cellType == .CabanaSizeHead{
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        }
        return ""
    }
    func sizeDetails()-> String{
        switch cellType {
        case .CabanaSizeLengthBottom:
            return "Length"
        case .CabanaSizeWidthBottom:
            return "Width"
        default:
            return ""
        }
    }
}
