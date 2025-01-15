//
//  OuterCoverTableViewCellModel.swift
//  CanabaTask
//
//  Created by AppStation on 15/01/25.
//

import Foundation
import UIKit

enum OuterCoverTableViewCellType{
    case outerCoverHead
    case galvanisedIron
    case fiper
}
class OuterCoverTableViewCellModel{
    var identifier = ""
    var cellType: OuterCoverTableViewCellType
    init(cellType: OuterCoverTableViewCellType) {
     
        self.cellType = cellType
        switch cellType {
        case .outerCoverHead:
            self.identifier = "cell.cabana.outercover.head"
        case .galvanisedIron,.fiper:
            self.identifier = "cell.cabana.outercover.bottom"
        }
    }
    func title()-> String{
        switch cellType {
        case .outerCoverHead:
            return "OUTER COVER"
        default:
            return ""
        }
    }
    func subTitle()->String{
        switch cellType {
        case .outerCoverHead:
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        default:
            return ""
       
        }
    }
    func outerCoverOption()-> String{
        switch cellType {
        case .galvanisedIron:
            return "GALVANISED IRON"
        case .fiper:
            return "PAINT"
        default:
            return ""
        }
    }
    func outerCoverOptionImage()-> UIImage{
        switch cellType {
        case .galvanisedIron:
            return UIImage(named: "roof") ?? UIImage()
        case .fiper:
            return UIImage(named: "layers") ?? UIImage()
        default:
            return UIImage()
        }
    }
}
