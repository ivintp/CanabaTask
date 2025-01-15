//
//  BathroomSizeTableViewCellModel.swift
//  CanabaTask
//
//  Created by Praveen on 11/01/25.
//

import Foundation
import UIKit

enum BathroomSizeTableViewCellType{
    case bathroomSizeHead
    case standard
    case medium
    case large
}
class BathroomSizeTableViewCellModel{
    var identifier: String = ""
    var cellType: BathroomSizeTableViewCellType
    
    init( cellType: BathroomSizeTableViewCellType) {
        self.cellType = cellType
        switch cellType {
        case .bathroomSizeHead:
            self.identifier = "cell.cabana.bathroom.head"
        case .standard,.medium,.large:
            self.identifier = "cell.cabana.bathroom.Bottom"
        }
    }
    func heading()-> String{
        if cellType == .bathroomSizeHead{
            return "BATHROOM SIZE"
        }
        return ""
    }
    func subTitle()-> String{
        if cellType == .bathroomSizeHead{
            return "Lorem ipsum dolor sit amet,          consetetur sadipscing elitr, sed diam "
        }
        return ""
    }
    func measurementHeading()->String{
    
        switch cellType {
        case .standard:
            return "STANDARD"
        case .medium:
            return "MEDIUM"
        case .large:
            return "LARGE"
        default:
            return ""
        }
    }
    func measurementDetails()-> String{
        switch cellType {
        case .standard:
            return "160 x 160 CM"
        case .medium:
            return "180 x 180 CM"
        case .large:
            return "200 x 200 CM"
        default:
            return ""
        }
    }
}
